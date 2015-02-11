
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

def on_the_table(rolled_dice)
  expected_result = ""
  rolled_dice.each do |i| 
    expected_result << "On the table:\n Your #{i[:sides]}-sided die shows the value of #{i[:face]}\n"
  end
  if rolled_dice.empty?
    expected_result = "No dice in the bucket"
  end
  expected_result
end

# In a loop, ask the user for the dice sides

# When the user enter 0, roll the dice in the basket and show the result
