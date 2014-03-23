class GameMaster
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

class ResponseMaster
  def yesno(response, gamemaster)
    localtruth = true

    while localtruth
      if response.upcase == "YES" || response.upcase() == "Y"
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

