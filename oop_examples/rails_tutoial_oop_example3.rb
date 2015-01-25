# Listing 4.12: Defining a Word class in the console. 
 class Word < String             # Word inherits from String.
   # Returns true if the string is its own reverse.
   def palindrome?
     self == self.reverse        # self is the string itself.
   end
 end

