# frozen_string_literal: true

# Calcula el coste de un objeto
def calcular_coste(obj)
  # p = objeto a calcular
  coste = 0 # Inicializamos
  eng = obj[:engarces].split(',').sort.reverse
  eng.each_with_index do |e, i|
    # Coste de los engarces (joyas y runas = 4)
    valor_calibre = [5, 10, 25, 50, 100, 250, 500]
    # Avoid negative index values
    coste += valor_calibre[e.to_i - i] if (e.to_i - i) >= 0
  end
  # Reputacion
  coste *= 0.9**obj[:repu].to_i # Factor de Repu
  coste.round # Redondea el coste sin decimales
end
