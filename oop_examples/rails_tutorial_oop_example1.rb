# https://www.railstutorial.org/book/rails_flavored_ruby#sec-a_class_of_our_own
# 4.4.2 
class Word
  def palindrome?(string)
    string == string.reverse
  end
end
