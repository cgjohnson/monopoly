#Monopoly

require_relative 'square'
require_relative 'player'

chuck = Player.new(1, "chuck")
go = GoSquare.new(0, "go")
baltic = Purple.new(1, "baltic", 100, "bank")

baltic.id
baltic.name
baltic.color
baltic.rent
baltic.owner
