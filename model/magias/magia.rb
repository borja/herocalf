# frozen_string_literal: true

# Todos los hechizos disponibles en el juego
class Magia < Hash
  attr_accessor :id, :name, :efecto, :potencia, :tipo, :subtipo,
                :diablura, :duracion, :alcance, :maestría, :ardid,
                :summun, :chakra # Only in plegarias

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def nivel
    ((id / 6) + 1).to_i
  end

  def img_path
    "/images/magia/#{elemento}s#{nivel}/#{name}.png"
  end

  def color
    colors = %w[FF6633 CCFFFF CC9966 44CCFF CC9999 EED6AF
                99FFCC CC4545 FAEE96 E0FFFF 688426]
    elems  = %w[fuego aire tierra agua sombra arena
                elfico sangre plegaria hielo execración]
    # Returns color code by position in colors array
    'background-color:#' + colors[elems.find_index(elemento)]
  end

  def kind
    elems = %w[fuego aire tierra agua]
    elems.include?(elemento) ? 'elemental' : 'sagrada'
  end
end
