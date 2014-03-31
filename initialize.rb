require_relative 'square'

class InitializeSquares
  def initialize
    go =            SpecialSquare.new("Go", "gamemaster", "go")

    mediterranean = Square.new("Mediterranean Avenue", "the bank", "purple",
                                60, [2, 10, 30, 90, 160, 250], 50, 30)

    community_1 =   SpecialSquare.new("Community Chest", "gamemaster", "community")

    baltic =        Square.new("Baltic Avenue", "the bank", "purple",
                                60, [4, 20, 60, 180, 320, 450], 50, 30)

    income_tax =    SpecialSquare.new("Income Tax", "gamemaster", "tax")

    reading_rr =    Square.new("Reading Railroad", "the bank", "railroad",
                                200, [25, 50, 100, 200], "none", 100)

    oriental =      Square.new("Oriental Avenue", "the bank", "light blue",
                                100, [6, 30, 90, 270, 400, 550], 50, 50)

    chance_1 =      SpecialSquare.new("Chance", "gamemaster", "chance")

    vermont =       Square.new("Vermont Avenue", "the bank", "light blue",
                                100, [6, 30, 90, 270, 400, 550], 50, 50)

    connecticut =   Square.new("Connecticut Avenue", "the bank", "light blue",
                                120, [8, 40, 100, 3000, 450, 600], 50, 60)

    jail =          SpecialSquare.new("Jail", "gamemaster", "jail")

    st_charles =    Square.new("St. Charles Place", "the bank", "pink",
                                120, [10, 50, 150, 450, 625, 750], 100, 70)

    electric_util = Square.new("Electric Company", "the bank", "utility",
                                150, "depends on roll", "none", 75)

    states_ave =    Square.new("States Avenue", "the bank", "pink",
                                120, [10, 50, 150, 450, 625, 750], 100, 70)

    virginia =      Square.new("Virginia Avenue", "the bank", "pink",
                                120, [12, 60, 180, 500, 700, 900], 100, 80)

    penn_rr =       Square.new("Pennsylvania Railroad", "the bank", "railroad",
                                   200, [25, 50, 100, 200], "none", 100)

    st_james =      Square.new("St. James Place", "the bank", "orange",
                                180, [14, 70, 200, 550, 750, 950], 100, 90)

    community_2 =   SpecialSquare.new("Community Chest", "gamemaster", "community")

    tennessee =     Square.new("Tennessee Avenue", "the bank", "orange",
                                180, [14, 70, 200, 550, 750, 950], 100, 90)

    new_york =      Square.new("New York Avenue", "the bank", "orange",
                                200, [16, 80, 220, 600, 800, 1000], 100, 100)

    free_parking =  SpecialSquare.new("Free Parking", "gamemaster", "free parking")

    kentucky =      Square.new("Kentucky Avenue", "the bank", "red",
                                220, [18, 90, 250, 700, 875, 1050], 150, 110)

    chance_2 =      SpecialSquare.new("Chance", "gamemaster", "chance")

    indiana =       Square.new("Indiana Avenue", "the bank", "red",
                                220, [18, 90, 250, 700, 875, 1050], 150, 110)

    illinois =      Square.new("Illinois Avenue", "the bank", "red",
                                240, [20, 100, 300, 750, 925, 1100], 150, 120)

    bo_rr =         Square.new("B & O Railroad", "the bank", "railroad",
                                   200, [25, 50, 100, 200], "none", 100)

    atlantic =      Square.new("Atlantic Avenue", "the bank", "yellow",
                                260, [22, 110, 330, 800, 975, 1150], 150, 130)

    ventnor =       Square.new("Ventnor Avenue", "the bank", "yellow",
                                260, [22, 110, 330, 800, 975, 1150], 150, 130)

    water_util =    Square.new("Water Works", "the bank", "utility",
                                150, "depends on roll", "none", 75)

    m_gardens =     Square.new("Marvin Gardens", "the bank", "yellow",
                                280, [24, 120, 360, 850, 1025, 1200], 150, 140)

    go_to_jail =    SpecialSquare.new("Go to Jail", "gamemaster", "go to jail")

    pacific =       Square.new("Pacific Avenue", "the bank", "green",
                                300, [26, 130, 390, 900, 1100, 1275], 200, 150)

    nc_ave =        Square.new("North Carolina Avenue", "the bank", "green",
                                300, [26, 130, 390, 900, 1100, 1275], 200, 150)

    community_3 =   SpecialSquare.new("Community Chest", "gamemaster", "community")

    penn_ave =      Square.new("Pennsylvania Avenue", "the bank", "green",
                                320, [28, 150, 450, 1000, 1200, 1400], 200, 160)

    shortline_rr =  Square.new("Shortline Railroad", "the bank", "railroad",
                                   200, [25, 50, 100, 200], "none", 100)

    chance_3 =      SpecialSquare.new("Chance", "gamemaster", "chance")

    park_place =    Square.new("Park Place", "the bank", "blue",
                                300, [35, 175, 500, 1100, 1300, 1500], 200, 175)

    luxury_tax =    SpecialSquare.new("Luxury Tax", "gamemaster", "tax")

    boardwalk =     Square.new("Boardwalk", "the bank", "blue",
                                400, [50, 200, 600, 1400, 1700, 2000], 200, 200)
  end
end
