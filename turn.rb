module TurnRegulator
  def self.turn(players, squares)
    bank        = Bank.new
    landlord    = LandLord.new
    localtruth  = true
    while localtruth
      players.each do |player|
        puts "#{player.name}, roll the dice, or choose another option."
        response = gets.chomp
        result = 0
        while result == 0
          log = `echo #{response} >> .response_log`
          case response.upcase
          when 'ROLL THE DICE', 'ROLL', 'DICE', ''
            result = 1
          when 'PROPOSE TRADE', 'PROPOSE', 'TRADE'
            result = 2
          when 'MORTGAGE'
            result = 3
          when 'HOUSES', 'HOUSE', 'BUY/SELL HOUSES', 'BUY HOUSES', 'BUY HOUSE', 'SELL HOUSES', 'SELL HOUSE', 'BUY/SELL', 'BUY', 'SELL'
            result = 4
          when 'QUIT', 'I QUIT'
            result = 5
          when 'SAVE'
            result = 6
          else
            puts "I'm afraid I don't understand, please try again."
            response = gets.chomp
          end
        end
        case result
        when 1
          PlayerMover.move(player, bank, squares)
          landlord.notify(player, squares)
          landlord.collect(player, players, squares, bank)
        when 3
          landlord.options(player, bank, squares)
          PlayerMover.move(player, bank, squares)
          landlord.notify(player, squares)
          landlord.collect(player, players, squares, bank)
        when 2, 4, 5, 6
          puts 'My sincerest apologies, this function is not avaliable yet.'
        end
      end
    end
  end
end

