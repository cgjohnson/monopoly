module MonopolyFramework
  class Player
    @@manifest = []
    attr_accessor :name, :position, :location, :cash, :properties
    def initialize(name)
      @name = name
      @position = 0
      @location = 'location, a function of position and square attributes'
      @cash = 2500
      @properties = []
      @@manifest << @name
    end
    def manifest
      @@manifest
    end
  end
end

module PlayerFactory
  def build(name)
    name = MonopolyFramework::Player.new(name)
  end
end
