class Dice
  def roll
    dice_1 = rand(1..6)
    dice_2 = rand(1..6)
    total = (dice_1 + dice_2)
    puts total
  end
end
