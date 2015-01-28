# https://www.railstutorial.org/book/rails_flavored_ruby#sec-modifying_built_in_classes
# Modifying built-in classes
class String
  # Returns true if the string is its own reverse.
  def blank?
    self == "  " || self == "" # mit einem regex quantifier bearbeiten  
  end
end

