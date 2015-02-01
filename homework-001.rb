# homework-001.rb

# Arrays
members_array = []

# Methoden
def register data
  case data 
  when "first_name"
    puts "Add the person's first name"
  when "family_name"
    puts "Add the person's family name"
  when "github_user"
    puts "Add the person's github username"
  end
  return gets.chomp
end

puts
puts "Welcome to the Ruby-Colearning Group"
puts
begin
puts "What would you like to do?"
puts "Press 1 for registering a Member"
puts "Press 2 to see a list of all Members"
puts "Press 3 to get out of here"
puts "Press 4 to delete current Group-List"
var_menue = gets.chomp.to_i
 if var_menue == 1 
   members_array.push "#{register('first_name')} #{register('family_name')} #{register('github_user')}"
   puts "#{members_array.first} #{members_array[1]} with github username #{members_array[2]} was added"
 elsif var_menue == 2
   test = members_array.empty?
   if test == true
     puts "sorry, no Members registered yet"
   else
    puts
    puts "Registered members are:"
    puts members_array
    puts
   end

 elsif var_menue == 3
   puts
   puts "Exiting the program"
 
 elsif var_menue == 4
   members_array.clear  
   puts
   puts "current Group-List was deleted"
   puts
  puts
 else
   puts
   puts "Incorrect Command"
   puts
 end
end until var_menue == 3 
