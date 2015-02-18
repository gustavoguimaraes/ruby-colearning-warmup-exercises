# Create a class called Spaetkauf that has one instance variable: line.

# In our Spaeti, we should be able to call "take a number" that takes a customer's name,
# appends their number to their name and adds them to the line.

# The line could look like this: ["1. Gustavo", "2. Max", "3. Duilio"]

# Additionally we should be able to call a method called "now_serving" that
# removes the customer who is first in line and returns their name.

# Write a test and then write the class.
class Spaetkauf
  attr_accessor :line
  def initialize(data = [])
    @line = data
  end
  def take_number data
    @line << data
    "#{@line.index(data) + 1}. #{data}" # funktioniert nicht bei gleichen eintraegen, da .index nach namen indexiert
  end
  def now_serving
     "it is #{@line.shift}'s turn"
  end
end
