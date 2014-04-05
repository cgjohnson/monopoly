class PlayerIndustry
  attr_accessor :manifest
  def initialize
    @manifest = []
  end
  def build(squares)
    puts 'User, how many players are there in total?'
    num = gets.chomp.to_i
    i = 0
    num.times do
      puts 'User, what is your name?'
      name = gets.chomp
      @manifest << PlayerFactory.build(name, squares)
      puts "Greetings, #{@manifest[i].name}."
      i += 1
    end
  end
end

module PlayerFactory
  def self.build(player, squares)
    player = Player.new(player, squares)
  end
end

class Player
  attr_accessor :name, :position, :location, :cash, :properties
  def initialize(name, squares)
    @name = name
    @position = 0
    @location = squares[@position].name
    @cash = 2500
    @properties = []
  end
end


class PlayerMover
  def self.move(player, bank, squares)
    #roll the dice
    dice = Dice.new
    puts "#{player.name}, please press enter to roll the dice."
    gets
    roll = dice.roll(2)
    puts "#{player.name} is rolling the dice..."
    #grammar
    if roll == 8 || roll == 11
      puts "#{player.name} rolled an #{roll.to_s}."
    else
      puts "#{player.name} rolled a #{roll.to_s}."
    end

    player.position += roll

    #restart array at 40, pay 200 in cash
    if player.position > 39
      player.position -= 40
      bank.gopay(player)
    end

    player.location =  squares[player.position].name

    #notify player of result
    unless player.position == 0
      puts"#{player.name} landed on #{player.location}, square #{player.position}."
    end
  end
end

