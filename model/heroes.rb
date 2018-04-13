# encoding: UTF-8

def heros
  total_heros = Dir['./data/heroes/*'].length
  [*0..(total_heros - 1)].map do |i|
    h = load_yaml("/heroes/#{i}")
    h['nivel'] = 1 unless h['nivel']
    h['ciudad'] = 'Jadessvärd' unless h['ciudad']
    h['id'] = i
    Hero.new(h)
  end
end

def filter_heros(criteria, palabra)
  filtered_heros = case criteria
  when 'status'
    lista_status = case palabra
      when 'licenciados'  then 'retirado'
      when 'heroes'       then 'activo'
      when 'ausentes'     then 'ausente'
      when 'reservistas'  then 'reserva'
      when 'extranjeros'  then 'extranjero'
    end

    heros.select {|h| h.estado.downcase.include?(lista_status) }
  when 'heroe'
    heros.select {|h| h.name.downcase.include?(palabra) }
  when 'jugador'
    heros.select {|h| h.jugador.downcase.include?(palabra) } 
  when 'raza'
    heros.select {|h| h.raza.downcase.include?(palabra) }
  when 'mascota'
    con_mascota = heros.reject {|h| h.pet.nil? }
    con_mascota.select {|h| h.pet.name.downcase.include?(palabra)}
  end

  filtered_heros.sort_by { |h| [h.nivel,h.reputacion] }.reverse
end

def hero(id)
  heros[id]
end

def jugadores
  (heros + renegados).map(&:jugador).uniq
end

def narrados(n)
  narrados = heros.select { |p| p.historia if p.historia == n }
  narrados.sort_by { |p| p.premio ? p.premio : 3 }
end

def nomalize_pj(pj)
  normalization = {
    '%C3%A1' => 'á',
    '%C3%A9' => 'é',
    '%C3%AD' => 'í',
    '%C3%B3' => 'ó',
    '%C3%BA' => 'ú',
  }
  pj.gsub(/%C3%A1|%C3%A9|%C3%AD|%C3%B3|%C3%BA/) { |match| normalization[match] }
end
