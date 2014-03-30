class Square

  #arrays for all squares
  @@squarenames =  []
  @@squareowners = []
  @@squarecolors = []
  @@squareprices = []

  #constructor method
  def initialize(id, name, owner)
    @id = id
    @name = name
    @owner = owner
    @color = "default"
    @price = 0
    @@squarenames << @name
    @@squareowners << @owner
    @@squarecolors << @color
    @@squareprices << @price
  end

  #accessor methods
  def id
    @id
  end
  def name
    @name
  end
  def self.squarenames
    @@squarenames
  end
  def self.squareowners
    @@squareowners
  end
  def self.squarecolors
    @@squarecolors
  end
  def self.squareprices
    @@squareprices
  end
end
