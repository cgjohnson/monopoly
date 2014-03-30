require_relative 'square'

class InitializeSquares
  def initialize
    go =            Square.new(0, "Go", "gamemaster", 
                                  "go", 
                                  :noprice, :norent, :nomortgage)
    mediterranean = Square.new(1, "Mediterranean Avenue", 
                                  "the bank", "purple", 
                                  100, 25, :mortgage)
    community_1 =   Square.new(2, "Community Chest", 
                                  "gamemaster", "community",
                                  :noprice, :norent, :nomortgage)
    baltic =        Square.new(3, "Baltic Avenue",
                                  "the bank", "purple",
                                  100, 25, :mortgage)
    income_tax =    Square.new(4, "Income Tax", "gamemaster", 
                                  "tax", 
                                  :noprice, :norent, :nomortgage)
    reading_rr =    Square.new(5, "Reading Railroad", 
                                  "the bank", "railroad", 
                                  200, 25, :mortgage)
    oriental =      Square.new(6, "Oriental Avenue",
                                  "the bank", "purple", 
                                  100, 25, :mortgage)
    chance_1 =      Square.new(7, "Chance", "gamemaster", 
                                  "chance", 
                                  :noprice, :norent, :mortgage)
    vermont =       Square.new(8, "Vermont Avenue",
                                  "the bank", "purple",
                                  100, 25, :mortgage)
    connecticut =   Square.new(9, "Connecticut Avenue",
                                  "the bank", "purple", 
                                  100, 25, :mortgage)
    jail =          Square.new(10, "Jail", "gamemaster",
                                   "jail", 
                                   :noprice, :norent, :mortgage)
    st_charles =    Square.new(11, "St. Charles Place", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    electric_util = Square.new(12, "Electric Company", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    states_ave =    Square.new(13, "States Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    virginia =      Square.new(14, "Virginia Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    penn_rr =       Square.new(15, "Pennsylvania Railroad", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    st_james =      Square.new(16, "St. James Place", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    community_2 =   Square.new(17, "Community Chest", "gamemaster", 
                                   :go, 
                                   :noprice, :norent, :mortgage)
    tennessee =     Square.new(18, "Tennessee Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    new_york =      Square.new(19, "New York Avenue", 
                                  "the bank", "purple", 
                                   100, 25, :mortgage)
    free_parking =  Square.new(20, "Free Parking", "gamemaster", 
                                   "free parking", 
                                   :noprice, :norent, :nomortgage)
    kentucky =      Square.new(21, "Kentucky Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    chance_2 =      Square.new(22, "Chance", "gamemaster", 
                                   "chance",
                                   :noprice, :norent, :mortgage)
    indiana =       Square.new(23, "Indiana Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    illinois =      Square.new(24, "Illinois Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    bo_rr =         Square.new(25, "B & O Railroad", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    atlantic =      Square.new(26, "Atlantic Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    ventnor =       Square.new(27, "Ventnor Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    water_util =    Square.new(28, "Water Works", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    m_gardens =     Square.new(29, "Marvin Gardens", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    go_to_jail =    Square.new(30, "Go to Jail", "gamemaster", 
                                   :go, 
                                   :noprice, :norent, :mortgage)
    pacific =       Square.new(31, "Pacific Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    nc_ave =        Square.new(32, "North Carolina Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    community_3 =   Square.new(33, "Community Chest", "gamemaster", 
                                   :go, 
                                   :noprice, :norent, :mortgage)
    penn_ave =      Square.new(34, "Pennsylvania Avenue", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    shortline_rr =  Square.new(35, "Shortline Railroad", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    chance_3 =      Square.new(36, "Chance", "gamemaster", 
                                   :go, 
                                   :noprice, :norent, :mortgage)
    park_place =    Square.new(37, "Park Place", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
    luxury_tax =    Square.new(38, "Luxury Tax", "gamemaster", 
                                   :go, 
                                   :noprice, :norent, :mortgage)
    boardwalk =     Square.new(39, "Boardwalk", 
                                   "the bank", "purple", 
                                   100, 25, :mortgage)
  end
end
