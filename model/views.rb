# DB Loader
def views
  load_yaml('views') # /data/views.yml
end

# Behaviour if defined, or from DB-views by default.
def view(ruta)
  # Routes List

  # Spell routes
  es_element  = %w[aire agua fuego tierra].include?(ruta)
  es_sagrada  = %w[arena hielo sombra sangre].include?(ruta)
  es_plegaria = %w[plegarias execraciones].include?(ruta)
  # Heroes routes
  campeones   = %w[reservistas ausentes licenciados].include?(ruta)

  # TODO: Refactor, reorder: v['ruta] first, and else goes to 404error site.
  # Route preview loader
  nav = if es_element then 'hechizos'
        elsif es_sagrada  then 'sagradas'
        elsif es_plegaria then 'plegarias'
        elsif campeones   then 'heroes'
        else ruta # Usual rooting
        end

  # Return the matching route ('nav') from DB
  v = views.find { |v| v['ruta'] == nav }
  v = v.nil? ? view('error') : v   # TODO : 404 error...
  Vista.new(v)
end

# View meta info for component and layouts
def viewinfo(ruta)
  {
    title:  view(ruta)['ruta'],
    bc:     breadcrumb(ruta),
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
