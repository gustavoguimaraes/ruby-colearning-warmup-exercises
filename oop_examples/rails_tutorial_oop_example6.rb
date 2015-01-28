class User
  attr_accessor :name, :email #creates attribute accessors corresponding to a user’s name and email address.
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end 
  def formatted_email
    "#{@name} <#{@email}>"
  end
end
