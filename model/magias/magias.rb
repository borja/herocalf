# YAML DB Loader
def elficas
  load_yaml('magia/elficas').map   { |s| Elfica.new(s) }
end

def plegarias
  load_yaml('magia/plegarias').map { |s| Plegaria.new(s) }
end

def execraciones
  load_yaml('magia/execraciones').map { |s| Execracion.new(s) }
end

def sangres
  load_yaml('magia/sangres').map   { |s| Sangre.new(s) }
end

def sombras
  load_yaml('magia/sombras').map   { |s| Sombra.new(s) }
end

def arenas
  load_yaml('magia/arenas').map   { |s| Arena.new(s) }
end

def hielos
  load_yaml('magia/hielos').map   { |s| Hielo.new(s) }
end

def aguas
  load_yaml('magia/aguas').map   { |s| Agua.new(s) }
end

def fuegos
  load_yaml('magia/fuegos').map   { |s| Fuego.new(s) }
end

def aires
  load_yaml('magia/aires').map   { |s| Aire.new(s) }
end

def tierras
  load_yaml('magia/tierras').map   { |s| Tierra.new(s) }
end

def spells
  aires + fuegos + aguas + tierras + hielos + arenas + sangres + sombras
end

# TODO: tune up this!
# All find ID methods
def elfica(id)
  elficas[id]
end

def plegaria(id)
  plegarias[id]
end

def sangre(id)
  sangres[id]
end

def sombra(id)
  sombras[id]
end

def hielo(id)
  hielos[id]
end

def arena(id)
  arenas[id]
end

def fuego(id)
  fuegos[id]
end

def aire(id)
  aires[id]
end

def agua(id)
  aguas[id]
end

def tierra(id)
  tierras[id]
end

def spell(id, elem)
  spells.find {|s| ( s.id == id && s.elemento == elem) }
end

def escuelas
  %w(Aire Fuego Agua Tierra Sombra Hielo Arena Tenebro Sangre Luz)
end

def tipos_magia
  load_yaml('magia/tipos')
end
