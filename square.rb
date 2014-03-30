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
                :type, :rent, :mortgage, :info
  #constructor method
  def initialize(id, name, owner, type, price, rent, mortgage)
    @id = id
    @name = name
    @owner = owner
    @type = type
    @price = price
    @rent = rent
    @mortgage = mortgage
    @info = {:id => @id, :name => @name,
            :owner => @owner, :type => type,
            :price => @price, :rent => @rent,
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
