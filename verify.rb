class Array
  def same_values?
    self.uniq.length == 1
  end
end

module Verify
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
