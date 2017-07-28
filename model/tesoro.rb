# encoding: UTF-8

# Tirada de dados, Sigmar
def dado_sigmar
  # Returns a random dice-face string
  %w(hammer comet plus blank eagle eagle)[rand(6)]
end

# Tirada de dados, 2d6 del tesoro, individual
def dado_tesoro
  # Returns a value from 1 to 6 (normal dice)
  rand(6) + 1
end

# Main method 2d6 + Sigmar dice
def tesoro(sigmar, dado1, dado2)
  # 12 values (2d6) ordered
  valores = %w(pifia vacia maldición trampa monstruo oro
               perg pot comida alijo cofre)
  # Requests (send) a method, named equals to the values.
  send(valores[dado1 + dado2 - 2], sigmar, dado1, dado2)
end

# posibles 5 valores del dado sigmar
def caras_sigmar
  # El sexto es eagle x2
  %w(eagle plus blank hammer comet)
end

# Resultados dependiendo de Sigmar
# --------------------------------

def buscar_tesoros (tipo, sigmar, *doble)
  # DB in YAML format
  bt  = load_yaml('buscar_tesoros')[tipo]
  sig = doble ? sigmar + '2' : sigmar
  bt[sig] || bt['default']
end

def pifia(sigmar, _dado1, _dado2) # 2
  buscar_tesoros('pifia', sigmar)
end

def vacia(sigmar, _dado1, _dado2) # 3
  buscar_tesoros('vacía', sigmar)
end

def maldición(sigmar, dado1, dado2) # 4
  # special condition
  doble = dado1 == dado2
  return "TBD" # TODO Arreglar esto
end

def trampa(sigmar, _dado1, _dado2) # 5
  buscar_tesoros('trampa', sigmar)
end

def monstruo(sigmar, _dado1, _dado2) # 6
  buscar_tesoros('monstruo', sigmar)
end

def oro(sigmar, _dado1, _dado2) # 7
  buscar_tesoros('oro', sigmar)
end

def perg(sigmar, _dado1, _dado2) # 8
  buscar_tesoros('pergamino', sigmar)
end

def pot(sigmar, _dado1, _dado2) # 9
  buscar_tesoros('poción', sigmar)
end

def comida(sigmar, _dado1, _dado2) # 10
  buscar_tesoros('comida', sigmar)
end

def alijo(sigmar, _dado1, _dado2) # 11
  r = %w(gema runa gema gema joya)
  c = [gema_random, runa_random, 'estropeada', gema_random, joya_random]
  r[caras_sigmar.index(sigmar)] + ': ' + c[caras_sigmar.index(sigmar)]
end

def cofre(sigmar, _dado1, _dado2) # 12
  r = %w(gema joya runa objeto artefacto)
  c = [gema_random, joya_random, runa_random, 'mágico', 'de reto']
  r[caras_sigmar.index(sigmar)] + ': ' + c[caras_sigmar.index(sigmar)]
end

# Genera una gema al azar
def gema_random
  gemas.sample.name
end

# Genera una joya al azar
def joya_random
  joyas.sample.name
end

# Genera una runa al azar
def runa_random
  runas.sample.name
end
