class Dice
  def initialize
    @total = 0
  end
  def roll(num)
    dice = Array.new(num, 0)
    dice.each do |die|
      result = rand(1..6)
      @total += result
    end
  @total
  end
end

