array = []

begin
puts "entry = 1, show list = 2, stopp = 0"
var_menue = gets.chomp.to_i

  if var_menue == 1
    puts "vorname"
    var_vorname = gets.chomp  
    puts "nachname"
    var_nachname = gets.chomp
    puts "github hame"
    var_github = gets.chomp
    array.push "#{var_vorname} #{var_nachname}  #{var_github}"
  else
    puts array
  end
end until var_menue == 0
