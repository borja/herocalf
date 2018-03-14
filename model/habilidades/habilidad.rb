# Cada heroe coge 2 poderes al subir de nivel
# No incluye las de base, esas se definen como Hab.
class Habilidad < Hash
  attr_accessor :id, :name, :description, :invocación,
                :type, :nivel, :requisitos, :foco, :rangos, :coste, :char

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end

  def ranks
    if rangos
      type == 'única' ? 6 : rangos
    else
      1
    end
  end

  def img_path
    "/images/skills/#{char}/#{name}.png"
  end
end
