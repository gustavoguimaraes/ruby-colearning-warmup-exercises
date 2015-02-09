# Go to your ruby colearning warmup exercises folder
# Once there create a folder and name it warmup-005
# Inside this folder create two files: one titled warmup-005.rb and the other
# warmup-005_spec.rb

# To get yourself into the test-first habit, first copy the tests in
# https://github.com/gustavoguimaraes/ruby-colearning-warmup-exercises/blob/master/warmup-005/warmup-005_spec.rb
# and add to your warm-005_spec.rb. Write an additional test to it.
# You can use the test that is already written as a reference.

# Your task is to create a "dice roller bucket". See README.md

#Push your code to github.

def roll_die(sides)
  # replace this fake implementation of
  # 6 sides die that always return 5
  {
    sides: 6, # number of sides
    face: 5   # a random number between 1 and sides (inclusive)
  }
end

def roll_bucket(dice_sides)
  # return an array of rolled dice
end

def on_the_table(rolled_dice)
  # return a descriptive string, like:
  # On the table:
  #   Your 4-sided die shows the value of 2
  #   Your 20-sided die shows the value of 17
  # or "No dice in the bucket"
end

# In a loop, ask the user for the dice sides

# When the user enter 0, roll the dice in the basket and show the result
