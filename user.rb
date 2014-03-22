require_relative 'square'
require_relative 'property'
require_relative 'player'

puts "what is your name?"
STDOUT.flush
name = gets.chomp
puts "hello, " + name +"; initializing..."
player1 = Player.new(0, name)
sleep(1)
player1.id
player1.name
player1.position
player1.cash
player1.roll
