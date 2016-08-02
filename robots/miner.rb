require_relative 'robot'
require_relative '../sources/diesel'
class Miner < Robot
  include Diesel
  def self.show_abilities
    @abilities = 'Excavar'
    puts "Minero: #{@abilities}"
  end
end
