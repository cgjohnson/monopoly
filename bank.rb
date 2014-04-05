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
  def rent(player, players, owner, rent)
    players.each do |landlord|
      if owner == landlord.name && owner != player.name
        puts "Shit, you landed on a square owned by #{owner}!"
#        if squares[player.position].
        puts "It appears you owe $#{rent[0]} in rent!"
        player.cash -= rent[0]
        landlord.cash += rent[0]
        puts "I'm afraid #{player.name} now only has $#{player.cash} in cash..."
        puts "#{landlord.name}, you now have $#{landlord.cash} in cash!"
      end
    end
  end
end
