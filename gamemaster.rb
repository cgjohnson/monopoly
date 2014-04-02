require_relative 'dice'
require_relative 'player'

class GameMaster
  attr_accessor :players, :number
  def initialize
    @players = []
    @number = 0
  end
  #action methods
  def speak(words)
    puts words
  end
  def inquire(question)
    puts question
    answer = gets.chomp
  end
end
