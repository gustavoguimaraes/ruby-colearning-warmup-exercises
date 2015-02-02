# homework-001.rb

# Arrays
members_current = []
members_store = []

# Methoden
def create_register data
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
def show_register data 
   if data.empty? 
     puts "sorry, no Members registered yet"
   else
    puts "\nRegistered members are:"
    puts data
    puts
   end
end
def exit_program
   puts
   puts "Exiting the program"
end
def delete_register data
    data.clear  
    puts "\ncurrent Group-List was deleted \n\n"
end

# let the app beginn!

puts "\nWelcome to the Ruby-Colearning Group"
begin
puts "\nWhat would you like to do?"
puts "Press 1 for registering a Member"
puts "Press 2 to see a list of all Members"
puts "Press 3 to get out of here"
puts "Press 4 to delete current Group-List"
var_menue = gets.chomp.to_i
 if var_menue == 1 
   members_current = []
   members_current = "#{create_register('first_name')} #{create_register('family_name')} #{create_register('github_user')}".split
   puts "\n#{members_current[0]} #{members_current[1]} with github username #{members_current[2]} was added"
   members_store.push "#{members_current[0]} #{members_current[1]} with github username #{members_current[2]}"
 elsif var_menue == 2
   show_register members_store
 elsif var_menue == 3
    exit_program 
 elsif var_menue == 4
   delete_register members_store
   else
   puts
   puts "Incorrect Command"
   puts
 end
end until var_menue == 3 
