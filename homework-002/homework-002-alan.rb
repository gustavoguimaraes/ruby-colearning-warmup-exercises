class Kitchen

  attr_accessor :items
  def initialize
    @items = []
  end

  def items
    @items
  end

  def add(item)
    @items << item
  end

  def remove_first_and_last_elements
    @items.shift
    @items.pop
  end

  def add_bang
    @items.map! { |x| x+"!" }
  end

  def make_mini_arrays array
    array.map { |x| [x]}
  end

  def remove_if_more_than_three_letters array
    array.select { |x| x.length<=3}
  end

  def alphabetically_backwards array
    array.sort.reverse #{ |a,b| b<=>a }
  end

  def first_three array
    array[0,3]
  end
  #write your methods that make the tests pass here

end
