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
        if VerifyMonopoly.monopoly?(color, squares) && squares[player.position].monopoly == 0
          puts "Shit, #{owner} has a monopoly here!"
          puts 'Luckily for you, there are no houses or hotel.'
          rent *=2
        end
        puts "It appears you owe $#{rent} in rent!"
        #if cash < 0, bank.bankruptcy(player) - allows you to mortgage / sell houses / sell properties to avoid bankruptcy
        player.cash -= rent
        landlord.cash += rent
        puts "I'm afraid #{player.name}, you now only has $#{player.cash} in cash..."
        puts "#{landlord.name}, you now have $#{landlord.cash} in cash!"
      end
    end
  end

  def sell(player, squares, owner, location, price)
    if owner == "the Bank"
      response = Response.new
      puts "#{player.name}, you have $#{player.cash},"
      purchased = response.yesno?("Would you like to purchase #{location} for $#{price}?")
      if purchased
        player.cash -= price
        puts "#{player.name}, your remaining cash is: #{player.cash}!"
        squares[player.position].owner = player.name
        puts "#{squares[player.position].owner}, you now own #{location}!"
        color = squares[player.position].type
        if VerifyMonopoly.monopoly?(color, squares)
          puts "#{player.name}, you now control the #{color} monopoly!"
        end
      end
    end
  end

  def mortgage(player, properties)
    response = Response.new
    puts "#{player.name}, you own these properties:"
    names = []
    properties.each do |square|
      names << square.name
    end
    puts names
    mortgage = response.yesno?("#{player.name}, would you like to mortgage any of your properties?")
    if mortgage
      puts "Which ones?"
      response = gets.chomp
      localtruth = true
      while localtruth
        log = `echo #{response} >> .response_log`
        if response.upcase == 'ALL' || response.upcase == 'ALL OF THEM'
          properties.each do |square|
            square.ismortgaged = true
            player.cash += square.mortgage
            puts "You've mortgaged all of your properties."
            puts "#{player.name}, you now have $#{player.cash} in cash!"
            localtruth = false
          end
        else
          properties.each do |square|
            if response.upcase == square.name.upcase
              square.ismortgaged = true
              player.cash += square.mortgage
              puts "You have mortgaged #{square.name}."
              puts "#{player.name}, you now have $#{player.cash} in cash!"
              localtruth = false
            elsif response.upcase == 'N' || response.upcase == 'NO' || response.upcase == 'NOPE' || response.upcase == 'CANCEL'
              puts 'No? How disappointing...'
              localtruth = false
            else
              puts "Excuse me, #{player.name}, I'm afraid I don't understand."
              puts "Some acceptable responses are:\nall\nsquare name\ncancel"
              response = gets.chomp
            end
          end
        end
      end
    end
  end

  def monopolize(player)
    #check if player has any monopolies, 
    #offer houses / hotel if they do
  end
end

