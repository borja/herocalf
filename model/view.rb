# Main view class
# Used for Bootstrap components management
# Documentation for v.4 https://getbootstrap.com/docs/4.0/examples
class Vista < Hash
  # TODO: Non default carousel and breadcrumb should be accesor
  attr_accessor :ruta, :title, :template

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def breadcrumb?
    ruta != 'inicio' # default
    # TODO: Missing non-default behaviour
  end

  def carousel?
    ruta == 'inicio'
    # TODO: Renegados
  end

  def breadcrumb
    if breadcrumb?
      [] # TODO: This should return an array
    else
      false
    end
  end
end
