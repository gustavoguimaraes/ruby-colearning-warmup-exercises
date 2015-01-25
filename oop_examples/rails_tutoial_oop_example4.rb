# https://www.railstutorial.org/book/rails_flavored_ruby#sec-modifying_built_in_classes
# Modifying built-in classes
class String
  # Returns true if the string is its own reverse.
  def palindrome?
    self == self.reverse
  end
end

if "deified".palindrome? == true
  puts "ist ein palindrom"
else
  puts "ist kein palindrom"
end

# puts "hat geklappt" if == true
# 
# 
