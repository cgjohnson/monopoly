class Dice
  def roll
    dice_1 = rand(1..6)
    dice_2 = rand(1..6)
    total = (dice_1 + dice_2)
    puts total
  end
end


#should add to function, to determine number of dice to roll
#something along the lines of:
#def roll(num_of_dice)
#yada yada yada
#end
