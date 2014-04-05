class Response
  def self.yesnokill(inquiry)
    puts inquiry
    response = gets.chomp
    localtruth = true
    while localtruth
      if response.upcase() == 'YES' || response.upcase() == "Y"
        puts 'Wonderful!'
        localtruth = false
      elsif response.upcase() == 'NO' || response.upcase() == "N"
        puts 'No? How dissapointing...'
        exit
      else
        puts "I'm afraid I don't understand..."
        puts 'Please answer yes or no'
        response = gets.chomp
      end
    end
  end
  def yesno?(inquiry)
    puts inquiry
    response = gets.chomp
    localtruth = 0
    while localtruth == 0
      if response.upcase() == 'YES' || response.upcase() == "Y"
        puts 'Wonderful!'
        localtruth = 1
      elsif response.upcase() == 'NO' || response.upcase() == "N" || response.upcase == 'NOPE'
        puts 'No? How dissapointing...'
        localtruth = 2
      else
        puts "I'm afraid I don't understand..."
        puts 'Please answer yes or no'
        response = gets.chomp
      end
    end
    case localtruth
    when 1
      true
    when 2
      false
    end
  end
end

