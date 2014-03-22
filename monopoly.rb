#Monopoly

require_relative 'square'
require_relative 'player'

chuck = Player.new(1, "chuck")
go = GoSquare.new(0, :none, "go", "bank")
melrose = Square.new(1, :purple, "melrose place", "bank")

chuck.locate
