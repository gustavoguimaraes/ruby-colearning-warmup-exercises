class DieSoon
  def initialize
    @expecte_results = ""
    @die_container = []
    @die_input = ""
  end

  def add_die
   puts "create as many dice you want A die should have minimum 4 sides"
   @die_input = gets.chomp.to_i
   if @die_input < 4 && @die_input > 0
     return  "your die should have at least 4 sides"
   elsif @die_input == 0
     return @die_input  
   else
     @die_container << @die_input
     return "Added a die with #{@die_input} sides"
   end
  end

  def shake_it
    data = roll_bucket @die_container
    puts on_the_table data
  end
 
  def roll_die(sides)
    {
      sides: sides, # number of sides
      face: rand(1 .. sides),   # a random number between 1 and sides (inclusive)
    }
  end

  # return an array of rolled dice
  def roll_bucket(dice_sides)
    dice_sides.map {|i| roll_die(i)}
  end

  def on_the_table(rolled_dice) # expects an hash of arrays
    expected_result = ""
    rolled_dice.each do |i| 
      expected_result << "On the table:\n Your #{i[:sides]}-sided die shows the value of #{i[:face]}\n"
    end
    if rolled_dice.empty?
      expected_result = "No dice in the bucket"
    end
    expected_result
  end
end
narkose = DieSoon.new
begin 
  puts narkose.add_die
  if narkose.add_die == 0
    narkose.shake_it
  end
end until @die_input == 23
#end until var == 23
#
# In a loop, ask the user for the dice sides

# When the user enter 0, roll the dice in the basket and show the result
