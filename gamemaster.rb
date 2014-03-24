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
  def moveplayer(player)
    puts "#{player.name}, please press enter to roll the dice."
    gets
    player.rollthedice
    player.move(player)
    player.choose
  end
end

class ResponseMaster
  def yesnokill(response)
    localtruth = true
    while localtruth
      if response.upcase() == "YES" || response.upcase() == "Y"
        puts "Wonderful!"
        localtruth = false
      elsif response.upcase() == "NO" || response.upcase() == "N"
        puts "No? How dissapointing..."
        exit
      else
        puts "I'm afraid I don't understand..."
        puts "Please answer yes or no"
        response = gets.chomp
      end
    end
  end
  def yesno(response)
    localtruth = true
    while localtruth
      if response.upcase() == "YES" || response.upcase() == "Y"
        puts "Wonderful!"
        localtruth = false
      elsif response.upcase() == "NO" || response.upcase() == "N"
        puts "No? How dissapointing..."
      else
        puts "I'm afraid I don't understand..."
        puts "Please answer yes or no"
        response = gets.chomp
      end
    end
  end

end

