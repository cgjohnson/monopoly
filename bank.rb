require_relative 'verify'
class Bank
  def gopay(player)
    player.cash += 200
    if player.position == 0
      puts "#{player.name} landed on Go! Collect $200!"
    elsif
      puts "#{player.name} passed Go! Collect $200!"
    end
    puts "#{player.name}, you now have $#{player.cash}!"
  end

  def rent(player, players, squares, owner, rent)
    players.each do |landlord|
      if owner == landlord.name && owner != player.name
        puts "Shit, you landed on a square owned by #{owner}!"
        rent = rent[0]
        color = squares[player.position].type
        if Verify.monopoly?(color, squares) #&& no houses or hotels
          puts "Shit, #{owner} has a monopoly here!"
          puts 'Luckily for you, there are no houses or hotel.'
          rent *=2
        end
        puts "It appears you owe $#{rent} in rent!"
        player.cash -= rent
        landlord.cash += rent
        puts "I'm afraid #{player.name} now only has $#{player.cash} in cash..."
        puts "#{landlord.name}, you now have $#{landlord.cash} in cash!"
      end
    end

    def sell(player, squares, owner, location, price)
      if owner == "the Bank"
        puts "#{player.name}, you have $#{player.cash}," 
        puts "would you like to purchase #{location} for $#{price}?"
        response = gets.chomp
        localtruth = true
        while localtruth
          if response.upcase() == "YES" || response.upcase() == "Y"
            puts "Wonderful!"
            player.cash -= price
            puts "#{player.name}, your remaining cash is: #{player.cash}!"
            squares[player.position].owner = player.name
            puts "#{squares[player.position].owner}, you now own #{location}!"
            localtruth = false
          elsif response.upcase() == "NO" || response.upcase() == "N"
            puts "No? How dissapointing..."
            localtruth = false
          else
            puts "I'm afraid I don't understand..."
            puts "Please answer yes or no"
            response = gets.chomp
          end
        end
      end
    end
  end
end
