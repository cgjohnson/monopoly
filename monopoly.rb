require_relative 'initialize'
require_relative 'gamemaster'
require_relative 'response'
require_relative 'player'
#require_relative 'square'

class Monopoly
  def play

    InitializeSquares.new

    GameMaster.speak("Greetings, User.")

    playtime = GameMaster.inquire("Would you like to play a game?\nyes or no")
    Response.yesnokill(playtime)

    @number = GameMaster.inquire("User, how many players are there in total?").to_i

    @number.times do
      puts ""
      name = GameMaster.inquire("User, what is your name?")
      GameMaster.create(name)
      puts ""
      GameMaster.speak("Greetings, #{name}!")
    end

    @compare = 0
    while  @compare != @number
      puts Player.list[@compare][:name]
      @compare +=1
    end
    @compare = 0 



=begin
      GameMaster.speak("#{player.name},")
      GameMaster.speak("your position is #{player.position},")
      GameMaster.speak("you are on #{player.location}.")
      GameMaster.speak("you have $#{player.cash},")
    end
=begin
          localtruth = true
    while localtruth
      @players.each do |player|
        GameMaster.move(player)
        sleep(1)
        GameMaster.inform(player)
        sleep(1)
        GameMaster.choice(player)
        sleep(1)
      end
    end
=end
  end
end

game = Monopoly.new

game.play
