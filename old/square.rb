class Square

  @@squares =  []
  @@purplesquares = []
  @@lightbluesquares = []
  @@pinksquares = []
  @@orangesquares = []
  @@redsquares = []
  @@yellowsquares = []
  @@greenquares = []
  @@bluesquares = []
  @@utilitysquares = []
  @@railroadsquares = []

  attr_accessor :id, :name, :owner, :price,
                :type, :rent, :house_cost,
                :mortgage, :info
  #constructor method
  def initialize(name, owner, type, price, rent, house_cost, mortgage)
    @name = name
    @owner = owner
    @type = type
    @price = price
    @rent = rent
    @house_cost = house_cost
    @mortgage = mortgage
    @info = {:name => @name,
            :owner => @owner,
            :type => @type,
            :price => @price,
            :rent => @rent,
            :house_cost => @house_cost,
            :mortgage => @mortgage}
    @@squares << @info
    case @type
      when 'purple'
        @@purplesquares << @info
      when 'light blue'
        @@lightbluesquares << @info
      when 'pink'
        @@pinksquares << @info
      when 'orange'
        @@orangesquares << @info
      when 'red'
        @@redsquares << @info
      when 'yellow'
        @@yellowsquares << @info
      when 'green'
        @@greenquares << @info
      when 'blue'
        @@bluesquares << @info
      when 'utility'
        @@utilitysquares << @info
      when 'railroad'
        @@railroadsquares << @info
    end
  end

  #accessor methods
  def self.list
    @@squares
  end
end

class SpecialSquare < Square
  attr_accessor :name, :owner, :type
  def initialize(name, owner, type)
    @name = name
    @owner = owner
    @type = type
    @info = {:name => @name,
             :owner => @owner,
             :type => @type}
  @@squares << @info
  end
end
