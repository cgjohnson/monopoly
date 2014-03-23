#Monopoly

require_relative 'square'
require_relative 'property'
require_relative 'player'

class Monopoly
  #masterclass
end

class GameMaster < Monopoly
  #constructor method
  def initialize
  end

  #accessor methods

  #action methods
  def speak(words)
    puts words
  end
  def inquire(question)
    puts question
    answer = gets.chomp
  end
end

class ResponseMaster < Monopoly
  def yesno(response)
    localtruth = true

    while localtruth
      if response == "yes"
        $gamemaster.speak("Wonderful!")
        localtruth = false
      elsif response == "no"
        $gamemaster.speak("How dissapointing...")
        exit
      else
        $gamemaster.speak("I'm afraid I don't understand...")
        response = $gamemaster.inquire("Please answer yes or no")
      end
    end
  end
end


#initialize game

$gamemaster = GameMaster.new
responsemaster = ResponseMaster.new

$gamemaster.speak("Greetings, User.")

playtime = $gamemaster.inquire("Would you like to play a game?\nyes or no")
responsemaster.yesno(playtime)

username = $gamemaster.inquire("User, what is your name?")
player1 = Player.new(0, username)

puts "your name is #{player1.name}"
