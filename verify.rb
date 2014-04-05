class Array
  def same_values?
    self.uniq.length == 1
  end
end

module VerifyMonopoly
  def self.monopoly?(color, squares)
    #determine length of monopoly
    owners = []
    squares.each do |square|
      if square.type == color
        owners << square.owner
      end
    end
    #determine if monopoly
    owners.same_values?
  end
end


### PROBABLY NEED TO REWORK THIS
module VerifyMonopolizer
  def self.monopolizer?(player, squares)
    colors = ['purple',
              'light blue',
              'pink',
              'orange',
              'red',
              'yellow',
              'green',
              'blue',
              'utility',
              'railroad']
    monopolies = []
    colors.each do |color|
      if VerifyMonopoly.monopoly?(color, squares)
        squares.each do |square|
          if square.type == color && square.owner == player.name
            monopolies << color
          end
        end
        true
      end
    end
        verified = monopolies.uniq
        puts "#{player.name}, you have #{verified.length} monopolies: #{verified}"
  end
end
