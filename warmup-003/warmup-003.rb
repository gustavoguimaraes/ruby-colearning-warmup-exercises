#, Go to your ruby colearning warmup exercises folder
# Once there create a folder name warmup-003
# Inside this folder create two files: one titled warmup-003.rb and the other
# warmup-003_spec.rb

# In warmup-003.rb, your task is to create a method called first_even_number
# that takes an array of numbers as an argument and returns the first even number
# of this array.

# Bonus point: in warmup-003_spec.rb create tests for the first_even_number method you created

# Push your code to Github

def first_even_number dummy_array
  dummy_array.each do |i|
    if 
    test = i.even?
      if test == true
        return i 
#        break
      end   
     end
  nil
end

