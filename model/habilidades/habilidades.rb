pjs = %w(
  caminante brujo vengador
  hoplita beastslord bersérker
  hechicero invocador conjurador
  paladín clérigo sacerdote
  derviche arquero druida
  ladrón asesino nigromante
  matador falangista ingeniero
  invicto cazadora chamán
  valquiria serafín daeva
  gárgola custodio títere
  cervecero tejedor púgil
  muspeli hrímϸursar krakenlord
  mirmidón gorgona sirena
)
# TODO : This should be less redundant

# Generic clase creator
pjs.each do |pj|
  define_method(pj + 's') do
    load_yaml("skills/#{pj}")
  end
  define_method(pj) do |id|
    send(pj + 's')[id].merge(char: pj)
  end
end

# Maestro de Armas
def maestrodearmas
  load_yaml('skills/maestrodearma')
end

def magisters
  load_yaml('skills/magisters')
end

def magister(id)
  magisters.find { |m| m['id'] == id }.merge('char' => 'magister')
end

def maestrodearma(id)
  maestrodearmas.find { |m| m['id'] == id }.merge('char' => 'maestrodearmas')
end

def fama(personaje)
  load_yaml('salones')[personaje]
end

def habilidad_base(personaje)
  load_yaml('skills/base')[personaje].map { |hb| Hab.new(hb) }
end
