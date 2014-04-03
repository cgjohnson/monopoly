require_relative 'square'

module SquareIndustry
  def initialize
    SpecialSquareFactory.build('Go')
    SquareFactory.build(:name     => 'Mediterranean Avenue',
                        :type     => 'purple',
                        :price    => 60,
                        :rent     => [2, 10, 30, 90, 160, 250],
                        :house    => 50,
                        :mortgage => 30)
    SpecialSquareFactory.build('Community Chest')
    SquareFactory.build(:name     => 'Baltic Avenue',
                        :type     => 'purple',
                        :price    => 60,
                        :rent     => [4, 20, 60, 180, 320, 450],
                        :house    => 50,
                        :mortgage => 30)
    SpecialSquareFactory.build('Income Tax')
    SquareFactory.build(:name     => 'Reading Railroad',
                        :type     => 'railroad',
                        :price    => 200,
                        :rent     => [25, 50, 100, 200],
                        :house    => 'none',
                        :mortgage => 100)
    SquareFactory.build(:name     => 'Oriental Avenue',
                        :type     => 'light blue',
                        :price    => 100,
                        :rent     => [6, 30, 90, 270, 400, 550],
                        :house    => 50,
                        :mortgage => 50)
    SpecialSquareFactory.build('Chance')
    SquareFactory.build(:name     => 'Vermont Avenue',
                        :type     => 'light blue',
                        :price    => 100,
                        :rent     => [6, 30, 90, 270, 400, 550],
                        :house    => 50,
                        :mortgage => 50)
    SquareFactory.build(:name     => 'Connecticut Avenue',
                        :type     => 'light blue',
                        :price    => 120,
                        :rent     => [8, 40, 100, 300, 450, 600],
                        :house    => 50,
                        :mortgage => 60)
    SpecialSquareFactory.build('Jail')
    SquareFactory.build(:name     => 'St. Charles Place',
                        :type     => 'pink',
                        :price    => 120,
                        :rent     => [10, 50, 150, 450, 625, 750],
                        :house    => 100,
                        :mortgage => 70)
    SquareFactory.build(:name     => 'Electric Company',
                        :type     => 'utility',
                        :price    => 150,
                        :rent     => 'depends on the roll',
                        :house    => 'none',
                        :mortgage => 75)
    SquareFactory.build(:name     => 'States Avenue',
                        :type     => 'pink',
                        :price    => 120,
                        :rent     => [10, 50, 150, 450, 625, 750],
                        :house    => 100,
                        :mortgage => 70)
    SquareFactory.build(:name     => 'Virginia Avenue',
                        :type     => 'pink',
                        :price    => 160,
                        :rent     => [12, 60, 180, 500, 700, 900],
                        :house    => 100,
                        :mortgage => 80)
    SquareFactory.build(:name     => 'Pennsylvania Railroad',
                        :type     => 'railroad',
                        :price    => 200,
                        :rent     => [25, 50, 100, 200],
                        :house    => 'none',
                        :mortgage => 100)
    SquareFactory.build(:name     => 'St. James Place',
                        :type     => 'orange',
                        :price    => 180,
                        :rent     => [14, 70, 200, 550, 750, 950],
                        :house    => 100,
                        :mortgage => 90)
    SpecialSquareFactory.build('Community Chest')
    SquareFactory.build(:name     => 'Tennessee Avenue',
                        :type     => 'orange',
                        :price    => 180,
                        :rent     => [14, 70, 200, 550, 750, 950],
                        :house    => 100,
                        :mortgage => 90)
    SquareFactory.build(:name  =>  'New York Avenue',
                        :type  =>  'orange',
                        :price =>  200,
                        :rent  =>  [16, 80, 220, 600, 800, 1000],
                        :house =>  100,
                        :mortgage => 100)
    SpecialSquareFactory.build('Free Parking')
    SquareFactory.build(:name  =>  'Kentucky Avenue',
                        :type  =>  'red',
                        :price =>  220,
                        :rent  =>  [18, 90, 250, 700, 875, 1050],
                        :house =>  150,
                        :mortgage => 110)
    SpecialSquareFactory.build('Chance')
    SquareFactory.build(:name  =>  'Indiana Avenue',
                        :type  =>  'red',
                        :price =>  220,
                        :rent  =>  [18, 90, 250, 700, 875, 1050],
                        :house =>  150,
                        :mortgage => 110)
    SquareFactory.build(:name  =>  'Illinois Avenue',
                        :type  =>  'red',
                        :price =>  240,
                        :rent  =>  [20, 100, 300, 750, 925, 1100],
                        :house =>  150,
                        :mortgage => 120)
    SquareFactory.build(:name  =>  'B & O Railroad',
                        :type  =>  'railroad',
                        :price =>  200,
                        :rent  =>  [25, 50, 100, 200],
                        :house =>  'none',
                        :mortgage => 100)
    SquareFactory.build(:name  =>  'Atlantic Avenue',
                        :type  =>  'yellow',
                        :price =>  260,
                        :rent  =>  [22, 110, 330, 800, 975, 1150],
                        :house =>  150,
                        :mortgage => 130)
    SquareFactory.build(:name  =>  'Ventnor Avenue',
                        :type  =>  'yellow',
                        :price =>  260,
                        :rent  =>  [22, 110, 330, 800, 975, 1150],
                        :house =>  150,
                        :mortgage => 130)
    SquareFactory.build(:name  =>  'Water Works',
                        :type  =>  'utility',
                        :price =>  150,
                        :rent  =>  'depends on the roll',
                        :house =>  'none',
                        :mortgage => 75)
    SquareFactory.build(:name  =>  'Marvin Gardens',
                        :type  =>  'yellow',
                        :price =>  280,
                        :rent  =>  [24, 120, 360, 850, 1025, 1200],
                        :house =>  150,
                        :mortgage => 140)
    SpecialSquareFactory.build('Go to Jail')
    SquareFactory.build(:name  =>  'Pacific Avenue',
                        :type  =>  'green',
                        :price =>  300,
                        :rent  =>  [26, 130, 390, 900, 1100, 1275],
                        :house =>  200,
                        :mortgage => 150)
    SquareFactory.build(:name  =>  'North Carolina Avenue',
                        :type  =>  'green',
                        :price =>  300,
                        :rent  =>  [26, 130, 390, 900, 1100, 1275],
                        :house =>  200,
                        :mortgage => 150)
    SpecialSquareFactory.build('Community Chest')
    SquareFactory.build(:name  =>  'Pennsylvania Avenue',
                        :type  =>  'green',
                        :price =>  320,
                        :rent  =>  [28, 150, 450, 1000, 1200, 1400],
                        :house =>  200,
                        :mortgage => 160)
    SquareFactory.build(:name  =>  'Shortline Railroad',
                        :type  =>  'railroad',
                        :price =>  200,
                        :rent  =>  [25, 50, 100, 200],
                        :house =>  'none',
                        :mortgage => 100)
    SpecialSquareFactory.build('Chance')
    SquareFactory.build(:name  =>  'Park Place',
                        :type  =>  'blue',
                        :price =>  300,
                        :rent  =>  [35, 175, 500, 1100, 1300, 1500],
                        :house =>  200,
                        :mortgage => 175)
    SpecialSquareFactory.build('Luxury Tax')
    SquareFactory.build(:name  =>  'Boardwalk',
                        :type  =>  'blue',
                        :price =>  400,
                        :rent  =>  [50, 200, 600, 1400, 1700, 2000],
                        :house =>  200,
                        :mortgage => 200)
  end
end
