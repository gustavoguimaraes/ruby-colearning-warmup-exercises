class Kitchen

  attr_accessor :items
  def initialize
    @items = []
  end

  def items
    @items
  end
  def add shovel
    @items = @items.push shovel 
  end
#
#  def remove_first_and_last_elements
#    @items = @items.pop
#    @items = @items.shift
#  end
#  #write your methods that make the tests pass here
  def add_bang
    @items = @items.map do |i|
      i.concat "!"
    end
  end
  def make_mini_arrays
    @items = @items.map { |i| i.split }
  end
  def puts_class   
    @items.each do |i|
      i.class
    end
  end

end

