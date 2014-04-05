class Response
  def self.yesnokill(inquiry)
    puts inquiry
    response = gets.chomp
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
end

