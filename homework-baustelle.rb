members_array = Array.new 
def create_register data
case data 
when "first_name"
puts "Add the person's first name"
when "family_name"
puts "Add the person's family name"
when "github_user"
puts "Add the person's github username"
else
puts "lolwut?!?"
end
return gets.chomp
end


#members_array.push "#{register('first_name')} #{register('family_name')} #{register('github_user')}"
#puts members_array

