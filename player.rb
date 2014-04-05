class PlayerIndustry
  attr_accessor :manifest
  def initialize
    @manifest = []
  end
  def build
    puts 'User, how many players are there in total?'
    num = gets.chomp.to_i
    i = 0
    num.times do
      puts 'User, what is your name?'
      name = gets.chomp
      @manifest << PlayerFactory.build(name)
      puts "Greetings, #{@manifest[i].name}."
      i += 1
    end
  end
end

module PlayerFactory
  def self.build(player)
    player = Player.new(player)
  end
end

class Player
  attr_accessor :name, :position, :location, :cash, :properties
  def initialize(name)
    @name = name
    @position = 0
    #need to fulfill a square dependency here
    @location = 'location, a function of position and square attributes'
    @cash = 2500
    @properties = []
  end
end


class PlayerMover
  def self.move(player, bank)
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

    #need to fulfill a square dependency here
    player.location ='the new location, based upon position and square'

    #notify player of result
    unless player.position == 0
      puts"#{player.name} landed on #{player.location}, square #{player.position}."
    end
  end
end

