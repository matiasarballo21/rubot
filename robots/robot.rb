require_relative '../sources/battery'
require_relative '../sources/diesel'
class Robot

  @@construidos = 0
  @@lanzados = 0
  @@vendidos = 0

  def initialize(name)
    @name = name
    @@construidos +=1
  end
  def release!
    @release = true
    @@lanzados +=1
  end
  def buy!(person)
    if @release == true
      puts "El robot #{@name} fue comprado por #{person.name}"
      @@vendidos +=1
    else
      puts "Hubo un Error al intentar comprar el robot #{@name}"
    end
  end
  def show_distance(value)
    distance(value)
      puts "Distancia que puedo recorrer: #{distance(value)}"
  end
  def self.show_report
    puts "Robots construidos al momento: #{@@construidos}"
    puts "Robots lanzados al momento: #{@@lanzados}"
    puts "Robots vendidos al momento: #{@@vendidos}"
  end
end
