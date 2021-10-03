# frozen_string_literal: true

# DB Loader
def views
  # /data/views.yml
  load_yaml('views')
end

def navigate(ruta)
  # Redirected view collection
  redirected_views = {
    hechizos: %w[aire agua fuego tierra],
    sagradas: %w[arena hielo sombra sangre],
    plegarias: %w[plegarias execraciones],
    heroes: %w[reservistas ausentes licenciados]
  }

  # Detects if ruta exists as key in redirected_views (returns nil if not)
  new_route = redirected_views.detect do |key, values|
    break key.to_s if Array(values).include?(ruta)
  end

  # Route preview loader
  new_route || ruta
end

# Behaviour if defined, or from DB-views by default.
def view(ruta)
  # Return the matching route ('navigate') from DB
  v = views.find { |vista| vista['ruta'] == navigate(ruta) }
  v = v.nil? ? view('error') : v # TODO : 404 error...
  Vista.new(v)
end

# View meta info for component and layouts
def viewinfo(ruta)
  {
    title: view(ruta)['ruta'],
    bc: breadcrumb(ruta),
    layout: view(ruta).template
  }
end

# Refined DATA hash-like
def preview(ruta)
  erb :template, locals: viewinfo(ruta)
end

# Only will be displayed if true (returns array)
def breadcrumb(ruta)
  bc = []
  if view(ruta)
    if view(ruta).template
      if view(ruta).template['main'].split('/').count > 1
        bc = view(ruta).template['main'].split('/')
      end
    end
  end
  bc # empty arrays should be treated in ERB
end
