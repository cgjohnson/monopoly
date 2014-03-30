require_relative 'square'
class Player

  @@players = []

  attr_accessor :name, :position, :cash, :location
  #constructor method
  def initialize(name)
    @name = name
    @position = 0
    @location = Square.list[@position][:name]
    @cash = 2500
    @info = {:name => @name,
             :position => @position,
             :cash => @cash}
    @@players << @name
  end

  def renew
  end
  def self.list
    @@players
  end
end
