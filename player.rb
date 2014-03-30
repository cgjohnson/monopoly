require_relative 'square'
class Player

  @@players = []

  attr_accessor :name, :position, :cash, :location
  #constructor method
  def initialize(name)
    @name = name
    @position = 0
    @location = Square.list[@position][:name]
    @cash = 2500
    @info = {:name => @name,
             :position => @position,
             :cash => @cash}
    @@players << @name
  end

  def renew
  end
  def self.list
    @@players
  end
end
  #accessor methods
  #action methods
=begin
  def 
    puts "#{@name} landed on #{@location}"
    puts "Information on #{@location}:"
    puts "Owned by: #{@owner}"
    puts "Color: #{@color}"
    puts "Price: #{@price_s}"
    puts " "

    if @owner == "the bank"
      puts "#{@name}, would you like to purchase #{@location} for $#{@price_s}?"
      response = gets.chomp
      localtruth = true
      while localtruth
        if response.upcase() == "YES" || response.upcase() == "Y"
          puts "Wonderful!"
          @cash = @cash - @price
          puts "#{@name}, your remaining cash is: #{@cash}!"
          Square.squareowners[@position] = @name
          @owner = Square.squareowners[@position]
          puts "#{@owner}, you now own #{@location}!"
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
location = Square.squarenames[@position]
    owner = Square.squareowners[@position]
    color = Square.squarecolors[@position]
    price = Square.squareprices[@position]
    price_s = Square.squareprices[@position].to_s
=end
