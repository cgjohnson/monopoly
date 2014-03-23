class Bar
  def initialize(name)
    @name = name
  end
  def name
    puts @name
  end
end

foo = Bar.new("chuck")

puts "hello, #{foo.name}"
