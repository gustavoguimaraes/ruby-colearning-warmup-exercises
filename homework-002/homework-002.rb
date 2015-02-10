class Kitchen

  attr_accessor :items

  def initialize
    @items = []
  end

  # Test 1
  def items
    @items
  end

  #write your methods that make the tests pass here
  
  # Test 2
  def add data  
    @items = @items.push data 
  end 

  # Test 3
  def remove_first_and_last_elements
    @items.pop
    @items.shift
  end
  
  # Test 4
  def add_bang
    @items = @items.map do |i| 
      i.concat "!" 
    end 
  end  
  
  ## Test 5
  #def make_mini_arrays data
  #  @items = data.map! {|var| var.split}
  #end 

  # Test 5
  def make_mini_arrays data
    data.each do |i|
      @items << Array(i)
    end
    @items
  end 


  # Test 6
  def remove_if_more_than_three_letters data # just gives last iteration back 
   data.each do |i|
      if i.length < 4
        @items = @items.push i # redefining @items
      end
    end 
   @items
  end

  # Test 7
  def alphabetically_backwards data
    @items = data.sort.reverse
  end

  # Test 8
  def first_three data
    @items = data[0..2]
  end
end
#sink = ["stove", "windows"]
#hello = Kitchen.new sink
#puts hello.remove_if_more_than_three_leters
