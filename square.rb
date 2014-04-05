class Square
  attr_accessor :name, :owner, :type, :price, :rent, :house, :mortgage, :info
  def initialize(name, type, price, rent, house, mortgage)
    @name     = name
    @owner    = 'the Bank'
    @type     = type
    @price    = price
    @rent     = rent
    @house    = house
    @mortgage = mortgage
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
  end
end

module SquareFactory
  def self.build(square, args)
    square = Square.new(args[:name],
                        args[:type],
                        args[:price],
                        args[:rent],
                        args[:house],
                        args[:mortgage])
  end
end

module SpecialSquareFactory
  def self.build(square, name)
    square = SpecialSquare.new(name)
  end
end

class SquareIndustry
  attr_accessor :manifest, :purple, :lightblue, :pink, :orange, :red, :yellow, :green, :blue, :utility, :railroad
  def initialize
    @manifest   = []
    @purple     = []
    @lightblue  = []
    @pink       = []
    @orange     = []
    @red        = []
    @yellow     = []
    @green      = []
    @blue       = []
    @utility    = []
    @railroad   = []
  end
  def build
    @manifest << SpecialSquareFactory.build('go', 'Go')
    @manifest << SquareFactory.build('mediterranean',
                        :name     => 'Mediterranean Avenue',
                        :type     => 'purple',
                        :price    => 60,
                        :rent     => [2, 10, 30, 90, 160, 250],
                        :house    => 50,
                        :mortgage => 30)
    @manifest << SpecialSquareFactory.build('community', 'Community Chest')
    @manifest << SquareFactory.build('baltic',
                        :name     => 'Baltic Avenue',
                        :type     => 'purple',
                        :price    => 60,
                        :rent     => [4, 20, 60, 180, 320, 450],
                        :house    => 50,
                        :mortgage => 30)
    @manifest << SpecialSquareFactory.build('incometax', 'Income Tax')
    @manifest << SquareFactory.build('reading_rr',
                        :name     => 'Reading Railroad',
                        :type     => 'railroad',
                        :price    => 200,
                        :rent     => [25, 50, 100, 200],
                        :house    => 'none',
                        :mortgage => 100)
    @manifest << SquareFactory.build('oriental',
                        :name     => 'Oriental Avenue',
                        :type     => 'light blue',
                        :price    => 100,
                        :rent     => [6, 30, 90, 270, 400, 550],
                        :house    => 50,
                        :mortgage => 50)
    @manifest << SpecialSquareFactory.build('chance', 'Chance')
    @manifest << SquareFactory.build('vermont',
                        :name     => 'Vermont Avenue',
                        :type     => 'light blue',
                        :price    => 100,
                        :rent     => [6, 30, 90, 270, 400, 550],
                        :house    => 50,
                        :mortgage => 50)
    @manifest << SquareFactory.build('connecticut',
                        :name     => 'Connecticut Avenue',
                        :type     => 'light blue',
                        :price    => 120,
                        :rent     => [8, 40, 100, 300, 450, 600],
                        :house    => 50,
                        :mortgage => 60)
    @manifest << SpecialSquareFactory.build('jail', 'Jail')
    @manifest << SquareFactory.build('charles',
                        :name     => 'St. Charles Place',
                        :type     => 'pink',
                        :price    => 120,
                        :rent     => [10, 50, 150, 450, 625, 750],
                        :house    => 100,
                        :mortgage => 70)
    @manifest << SquareFactory.build('electric',
                        :name     => 'Electric Company',
                        :type     => 'utility',
                        :price    => 150,
                        :rent     => 0, #depends on the roll, need to add function for this
                        :house    => 'none',
                        :mortgage => 75)
    @manifest << SquareFactory.build('states',
                        :name     => 'States Avenue',
                        :type     => 'pink',
                        :price    => 120,
                        :rent     => [10, 50, 150, 450, 625, 750],
                        :house    => 100,
                        :mortgage => 70)
    @manifest << SquareFactory.build('virginia',
                        :name     => 'Virginia Avenue',
                        :type     => 'pink',
                        :price    => 160,
                        :rent     => [12, 60, 180, 500, 700, 900],
                        :house    => 100,
                        :mortgage => 80)
    @manifest << SquareFactory.build('penn_rr',
                        :name     => 'Pennsylvania Railroad',
                        :type     => 'railroad',
                        :price    => 200,
                        :rent     => [25, 50, 100, 200],
                        :house    => 'none',
                        :mortgage => 100)
    @manifest << SquareFactory.build('james',
                        :name     => 'St. James Place',
                        :type     => 'orange',
                        :price    => 180,
                        :rent     => [14, 70, 200, 550, 750, 950],
                        :house    => 100,
                        :mortgage => 90)
    @manifest << SpecialSquareFactory.build('community', 'Community Chest')
    @manifest << SquareFactory.build('tennessee',
                        :name     => 'Tennessee Avenue',
                        :type     => 'orange',
                        :price    => 180,
                        :rent     => [14, 70, 200, 550, 750, 950],
                        :house    => 100,
                        :mortgage => 90)
    @manifest << SquareFactory.build('newyork',
                        :name  =>  'New York Avenue',
                        :type  =>  'orange',
                        :price =>  200,
                        :rent  =>  [16, 80, 220, 600, 800, 1000],
                        :house =>  100,
                        :mortgage => 100)
    @manifest << SpecialSquareFactory.build('freeparking', 'Free Parking')
    @manifest << SquareFactory.build('kentucky',
                        :name  =>  'Kentucky Avenue',
                        :type  =>  'red',
                        :price =>  220,
                        :rent  =>  [18, 90, 250, 700, 875, 1050],
                        :house =>  150,
                        :mortgage => 110)
    @manifest << SpecialSquareFactory.build('chance', 'Chance')
    @manifest << SquareFactory.build('indiana',
                        :name  =>  'Indiana Avenue',
                        :type  =>  'red',
                        :price =>  220,
                        :rent  =>  [18, 90, 250, 700, 875, 1050],
                        :house =>  150,
                        :mortgage => 110)
    @manifest << SquareFactory.build('illinois',
                        :name  =>  'Illinois Avenue',
                        :type  =>  'red',
                        :price =>  240,
                        :rent  =>  [20, 100, 300, 750, 925, 1100],
                        :house =>  150,
                        :mortgage => 120)
    @manifest << SquareFactory.build('bo_rr',
                        :name  =>  'B & O Railroad',
                        :type  =>  'railroad',
                        :price =>  200,
                        :rent  =>  [25, 50, 100, 200],
                        :house =>  'none',
                        :mortgage => 100)
    @manifest << SquareFactory.build('atlantic',
                        :name  =>  'Atlantic Avenue',
                        :type  =>  'yellow',
                        :price =>  260,
                        :rent  =>  [22, 110, 330, 800, 975, 1150],
                        :house =>  150,
                        :mortgage => 130)
    @manifest << SquareFactory.build('ventnor',
                        :name  =>  'Ventnor Avenue',
                        :type  =>  'yellow',
                        :price =>  260,
                        :rent  =>  [22, 110, 330, 800, 975, 1150],
                        :house =>  150,
                        :mortgage => 130)
    @manifest << SquareFactory.build('water',
                        :name  =>  'Water Works',
                        :type  =>  'utility',
                        :price =>  150,
                        :rent  =>  0, #depends on the roll, need to add function for this
                        :house =>  'none',
                        :mortgage => 75)
    @manifest << SquareFactory.build('marvin',
                        :name  =>  'Marvin Gardens',
                        :type  =>  'yellow',
                        :price =>  280,
                        :rent  =>  [24, 120, 360, 850, 1025, 1200],
                        :house =>  150,
                        :mortgage => 140)
    @manifest << SpecialSquareFactory.build('gotojail', 'Go to Jail')
    @manifest << SquareFactory.build('pacific',
                        :name  =>  'Pacific Avenue',
                        :type  =>  'green',
                        :price =>  300,
                        :rent  =>  [26, 130, 390, 900, 1100, 1275],
                        :house =>  200,
                        :mortgage => 150)
    @manifest << SquareFactory.build('carolina',
                        :name  =>  'North Carolina Avenue',
                        :type  =>  'green',
                        :price =>  300,
                        :rent  =>  [26, 130, 390, 900, 1100, 1275],
                        :house =>  200,
                        :mortgage => 150)
    @manifest << SpecialSquareFactory.build('community', 'Community Chest')
    @manifest << SquareFactory.build('pennsylvania',
                        :name  =>  'Pennsylvania Avenue',
                        :type  =>  'green',
                        :price =>  320,
                        :rent  =>  [28, 150, 450, 1000, 1200, 1400],
                        :house =>  200,
                        :mortgage => 160)
    @manifest << SquareFactory.build('shortline_rr',
                        :name  =>  'Shortline Railroad',
                        :type  =>  'railroad',
                        :price =>  200,
                        :rent  =>  [25, 50, 100, 200],
                        :house =>  'none',
                        :mortgage => 100)
    @manifest << SpecialSquareFactory.build('chance', 'Chance')
    @manifest << SquareFactory.build('parkplace',
                        :name  =>  'Park Place',
                        :type  =>  'blue',
                        :price =>  300,
                        :rent  =>  [35, 175, 500, 1100, 1300, 1500],
                        :house =>  200,
                        :mortgage => 175)
    @manifest << SpecialSquareFactory.build('luxurytax', 'Luxury Tax')
    @manifest << SquareFactory.build('boardwalk',
                        :name  =>  'Boardwalk',
                        :type  =>  'blue',
                        :price =>  400,
                        :rent  =>  [50, 200, 600, 1400, 1700, 2000],
                        :house =>  200,
                        :mortgage => 200)
    @manifest.each do |square|
      case square.type
        when 'purple'
          @purple    << square
        when 'light blue'
          @lightblue << square
        when 'pink'
          @pink      << square
        when 'orange'
          @orange    << square
        when 'red'
          @red       << square
        when 'yellow'
          @yellow    << square
        when 'green'
          @green     << square
        when 'blue'
          @blue      << square
        when 'utility'
          @utility   << square
        when 'railroad'
          @railroad  << square
      end
    end
  end
end
