require_relative 'monopoly'

class Test
  def test
    InitializeSquares.new
    gamemaster = GameMaster.new
    responsemaster = ResponseMaster.new

    gamemaster.speak("Greetings, User.")

    playtime = gamemaster.inquire("Would you like to play a game?\nyes or no")
    responsemaster.yesno(playtime, gamemaster)

    name = gamemaster.inquire("User, what is your name?")
    player1 = Player.new(0, name)

    puts "User, your id is #{player1.id_s}!"
    puts "User, your position is #{player1.position_s}!"
    puts "User, your cash is #{player1.cash_s}!"
    puts "User, your name is #{player1.name}!"
    puts "User, your location is #{player1.location}!"

    gamemaster.inquire("#{player1.name}, please press enter to roll the dice.")

    player1.rollthedice
    player1.move
    puts "your position is now #{player1.position_s}"
  end
end

game = Test.new

game.test
