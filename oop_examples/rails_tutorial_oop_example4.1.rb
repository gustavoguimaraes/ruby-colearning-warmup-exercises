# https://www.railstutorial.org/book/rails_flavored_ruby#sec-modifying_built_in_classes
# Modifying built-in classes
class String
  # Returns true if the string is its own reverse.
  def palindrome?
    var = self == self.reverse
    if var == true
      return "ja, ist ein palindrom"
    else
      puts "ist kein palindrom"
    end
  end
end
