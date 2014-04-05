module MonopolyFramework
  class Square
    @@manifest  = []
    @@purple    = []
    @@lightblue = []
    @@pink      = []
    @@orange    = []
    @@red       = []
    @@yellow    = []
    @@green     = []
    @@blue      = []
    @@utility   = []
    @@railroad  = []
    attr_accessor :name, :owner, :type, :price, :rent, :house, :mortgage, :info
    def initialize(name, type, price, rent, house, mortgage)
      @name     = name
      @owner    = 'the Bank'
      @type     = type
      @price    = price
      @rent     = rent
      @house    = house
      @mortgage = mortgage
      @info = {:name      => @name,
              :owner      => @owner,
              :type       => @type,
              :price      => @price,
              :rent       => @rent,
              :house_cost => @house,
              :mortgage   => @mortgage}

      @@manifest << @info
      case @type
        when 'purple'
          @@purple    << @info
        when 'light blue'
          @@lightblue << @info
        when 'pink'
          @@pink      << @info
        when 'orange'
          @@orange    << @info
        when 'red'
          @@red       << @info
        when 'yellow'
          @@yellow    << @info
        when 'green'
          @@green     << @info
        when 'blue'
          @@blue      << @info
        when 'utility'
          @@utility   << @info
        when 'railroad'
          @@railroad  << @info
      end
    end
  end

  class SpecialSquare < Square
    attr_accessor :name, :owner, :type
    def initialize(name)
      @name   = name
      @owner  = 'the Gamemaster'
      @type   = 'special'
      @info   = {:name  => @name,
                 :owner => @owner,
                 :type  => @type}
      @@manifest << @info
    end
  end
end

module SquareFactory
  def self.build(args)
    MonopolyFramework::Square.new(args[:name],
                                  args[:type],
                                  args[:price],
                                  args[:rent],
                                  args[:house],
                                  args[:mortgage])
  end
end

module SpecialSquareFactory
  def self.build(name)
    MonopolyFramework::SpecialSquare.new(name)
  end
end
