class Person
  def initialize(name)
    @name = name
  end
  def greetings
    puts "#{@name} says hello"
  end
end

max = Person.new("hans")
max.greetings
