require_relative 'square'
require_relative 'property'
require_relative 'player'

  def begin
    puts "how many players?"
    STDOUT.flush
    howmany = gets.chomp.to_i

    case howmany
    when 2
      puts "what is player 1's name?"
      STDOUT.flush
      name1 = gets.chomp
      player1 = Player.new(1, name1)
      puts "what is player 2's name?"
      STDOUT.flush
      name2 = gets.chomp
      player2 = Player.new(2, name2)
    when 3
      puts "what is player 1's name?"
      STDOUT.flush
      name1 = gets.chomp
      player1 = Player.new(1, name1)
      puts "what is player 2's name?"
      STDOUT.flush
      name2 = gets.chomp
      player2 = Player.new(2, name2)
      puts "what is player 3's name?"
      STDOUT.flush
      name3 = gets.chomp
      player3 = Player.new(3, name3)
    when 4
      puts "what is player 1's name?"
      STDOUT.flush
      name1 = gets.chomp
      player1 = Player.new(1, name1)
      puts "what is player 2's name?"
      STDOUT.flush
      name2 = gets.chomp
      player2 = Player.new(2, name2)
      puts "what is player 3's name?"
      STDOUT.flush
      name3 = gets.chomp
      player3 = Player.new(3, name3)
      puts "what is player 4's name?"
      STDOUT.flush
      name4 = gets.chomp
      player4 = Player.new(4, name4)
    when 5
      puts "what is player 1's name?"
      STDOUT.flush
      name1 = gets.chomp
      player1 = Player.new(1, name1)
      puts "what is player 2's name?"
      STDOUT.flush
      name2 = gets.chomp
      player2 = Player.new(2, name2)
      puts "what is player 3's name?"
      STDOUT.flush
      name3 = gets.chomp
      player3 = Player.new(3, name3)
      puts "what is player 4's name?"
      STDOUT.flush
      name4 = gets.chomp
      player4 = Player.new(4, name4)
      puts "what is player 5's name?"
      STDOUT.flush
      name5 = gets.chomp
      player5 = Player.new(5, name5)
    when 6
      puts "what is player 1's name?"
      STDOUT.flush
      name1 = gets.chomp
      player1 = Player.new(1, name1)
      puts "what is player 2's name?"
      STDOUT.flush
      name2 = gets.chomp
      player2 = Player.new(2, name2)
      puts "what is player 3's name?"
      STDOUT.flush
      name3 = gets.chomp
      player3 = Player.new(3, name3)
      puts "what is player 4's name?"
      STDOUT.flush
      name4 = gets.chomp
      player4 = Player.new(4, name4)
      puts "what is player 5's name?"
      STDOUT.flush
      name5 = gets.chomp
      player5 = Player.new(5, name5)
      puts "what is player 6's name?"
      STDOUT.flush
      name6 = gets.chomp
      player6 = Player.new(6, name6)
    else
      puts "invalid number"
    end
  end
