require_relative 'square'
class Player

  @@players = []

  attr_accessor :name, :position, :location, :cash, :properties
  #constructor method
  def initialize(name)
    @name = name
    @position = 0
    @location = Square.list[@position][:name]
    @cash = 2500
    @properties = []
    @info = {:name => @name,
             :position => @position,
             :cash => @cash}
    @@players << @info
  end

  def renew
  end
  def self.list
    @@players
  end
end
