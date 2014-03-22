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
  $player =[:player1, :player2, :player3, :player4, :player5,
           :player6, :player7, :player8, :player9, :player10]
  end

  #accessor methods
  def playerid
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

class Response < Monopoly
  def assignplayers(number)
    localtruth = true
    i = number -1
    n = 1
    while localtruth
      if i > 0 && i < 9
        while i > 0 && i < 9
          username = $gamemaster.inquire("#{$player[n]}, what is your name?")
          $player[n] = Player.new(n, username)
          n +=1
          i -=1
          localtruth = false
        end
      else
        puts "I'm afraid you entered an invalid number."
        playnum = $gamemaster.inquire("Please try again.").to_i
        i = playnum -1
      end
    end
  end
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
responsemaster = Response.new

$gamemaster.speak("Greetings, User.")

playtime = $gamemaster.inquire("Would you like to play a game?\nyes or no")
responsemaster.yesno(playtime)

username = $gamemaster.inquire("#{$player[0]}, what is your name?")

#initialize player1
$player[0] = Player.new(0, username)

playnum = $gamemaster.inquire("How many players are there in total?").to_i
responsemaster.assignplayers(playnum)


