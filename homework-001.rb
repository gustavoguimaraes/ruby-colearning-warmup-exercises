# homework-001.rb

# Arrays
members_array = []

# Methoden
def register_name
   puts "Add a the person's first name"
   @var_vorname = gets.chomp
end
def register_name
   puts "Add a the person's first name"
   @var_vorname = gets.chomp
end
def register_family_name
   puts "Add the person's family name"
   @var_nachname = gets.chomp
end
def register_github_name
   puts "Add this person's Github username"
   @var_github = gets.chomp
end
def store_infos
   method_array = []
   method_array.push "#{@var_vorname} #{@var_nachname} #{@var_github}"
   @output = method_array 
end
def print_infos
   puts "#{@var_vorname} #{@var_nachname} with github username #{@var_github} was added"
   puts
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
   register_name
   register_family_name
   register_github_name
   members_array.concat store_infos 
   print_infos 
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
