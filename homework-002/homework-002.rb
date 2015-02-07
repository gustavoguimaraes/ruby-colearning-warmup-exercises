class Kitchen

  attr_accessor :items
  def initialize
    @items = []
  end

  def items
    @items
  end

  #write your methods that make the tests pass here
 def add shovel
    @items = @items.push shovel 
  end 

  def add_bang
    @items = @items.map do |i| 
      i.concat "!" 
    end 
  end  

  def remove_if_more_than_three_letters data
   data.each do |i|
      if i.length < 4
        @items = @items.push i
      end
    end 
    @items 
  end

  def alphabetically_backwards data
    @items = data.sort.reverse
  end

  def first_three data
    @items = data[0..2]
  end

  def remove_first_and_last_elements
    @items.pop
    @items.shift
  end

  def make_mini_arrays data
    data.each do |i| 
      h = i.split 
     @items.push h
    end
    @itmes
  end 
end
