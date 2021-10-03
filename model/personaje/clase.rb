# frozen_string_literal: true

# DB Loader
def clases
  load_yaml('personaje/clases')
end

def personajes
  clases.values.flatten.sort
end
