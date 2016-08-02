require_relative 'robot'
require_relative '../sources/battery'
include Battery
class Humanoid < Robot
  def self.show_abilities
    @abilities = 'Comportamiento de Humano'
    puts "Humanoide: #{@abilities}"
  end
end
