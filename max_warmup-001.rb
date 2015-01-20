# 12.01.2015
# auf einem test_branch
puts "von wem moechtes du etwas wissen"
puts "gustavo"
puts "thuy"
puts "philipp"
info = gets.chomp
puts info
case info
when "gustavo"
  puts "er mag tanzen"
when "thuy"
  puts "cool"
when "philipp"
  puts "essen"
else
  puts "choose a vaid name"
end

