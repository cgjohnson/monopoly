require_relative 'dice'
require_relative 'player'

class GameMaster
  #action methods
  def self.speak(words)
    puts words
  end
  def self.inquire(question)
    puts question
    answer = gets.chomp
  end
  def self.move(player)
    #roll the dice
    dice = Dice.new
    puts "#{player.name}, please press enter to roll the dice."
    gets
    roll = dice.roll(2)
    puts "#{player.name} is rolling the dice..."
    sleep(1)
    if roll == 8 || roll == 11
      puts "#{player.name} rolled an #{roll.to_s}"
    else
      puts "#{player.name} rolled a #{roll.to_s}"
    end
    sleep(1)

    #update array if position hits 40, pay up
    player.position += roll
    if player.position > 39
      player.position -= 40
      player.cash += 200
      if player.position == 0
        puts "#{player.name} landed on Go! Collect $200!"
      elsif
        puts "#{player.name} passed Go! Collect $200!"
      end
    end
    player.location = Square.list[player.position][:name]
    unless player.position == 0
      puts"#{player.name} landed on #{player.location}"
    end
  end
  def self.inform(player)
    location = Square.list[player.position][:name]
    owner = Square.list[player.position][:owner]
    type = Square.list[player.position][:type]
    price = Square.list[player.position][:price]
    rent = Square.list[player.position][:rent]
    mortgage = Square.list[player.position][:mortgage]

    puts "Information on #{location}:"
    puts "Owned by: #{owner}"
    puts "Type: #{type}"
    puts "Price: #{price}"
    puts "Rent: #{rent}"
    puts "Mortgage: #{mortgage}"
  end
end

