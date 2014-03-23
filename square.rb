class Square

  #array for all squares
  @@squarenames =  []
  @@squareowners = []

  #constructor method
  def initialize(id, name)
    @id = id
    @name = name
    @owner = "bank"
    @color = "default"
    @@squarenames << @name
    @@squareowners << @owner
  end

  def self.gameboard
    @@squarenames
  end

  #accessor methods
  def id
    @id
  end
  def name
    @name
  end
end
