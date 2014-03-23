class Square

  #array for all squares
  @@gameboard =  []

  #constructor method
  def initialize(id, name)
    @@gameboard << name
    @id = id
    @name = name
  end

  def self.gameboard
    @@gameboard
  end

  #accessor methods
  def id
    @id
  end
  def name
    @name
  end
end
