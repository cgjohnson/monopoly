#Monopoly

require_relative 'square'
require_relative 'property'
require_relative 'player'

class Monopoly
  #masterclass
end

class GameMaster < Monopoly
  def speak(words)
    puts words
  end
  def inquire(question)
    puts question
    answer = gets.chomp.to_s
  end
end

class Response < Monopoly
  def yesno(response, gamemaster)
    localtruth = true

    while localtruth
      if response == "yes"
        gamemaster.speak("Wonderful!")
        localtruth = false
      elsif response == "no"
        gamemaster.speak("How dissapointing...")
        exit
      else
        gamemaster.speak("I'm afraid I don't understand...")
        response = gamemaster.inquire("Please answer yes or no")
      end
    end
  end
end


#initialize game

gamemaster = GameMaster.new
responsemaster = Response.new

gamemaster.speak("Greetings, User.")

playtime = gamemaster.inquire("Would you like to play a game?\nyes or no")

responsemaster.yesno(playtime, gamemaster)




#play
