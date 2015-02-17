# Go to the file homework-004_spec.rb and create a test for a method `make_list` that takes an array
#and returns that same array but as an array of strings in a numbered list.
# e.g expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])

# Run this test by typing 'rspec list_maker_spec.rb' in your terminal and see it fail.

# Then, create a method on array called 'make_list' that iterates over the array it is
# called on and appends a number, a period, and a space to each element.
# e.g make_list(["ich", "ni", "san"])
# should return #=> ["1. ich", "2. ni", "3. san"]

# In the end your tests should pass.
#def make_list data
#  mutti = []
#  data.each_with_index do |var, index|
#  mutti <<  "#{index + 1}. #{var}"
#  end
#  mutti
#end

def make_list data
  data.map.with_index {|var, index| "#{index + 1}. #{var}"}
end
