# Define las lenguas que existen en el viejo mundo
class Lengua < Hash
  attr_accessor :id, :name, :personajes, :desc

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
end

# DB Loader
def lenguas
  load_yaml('personaje/lenguas')
end
