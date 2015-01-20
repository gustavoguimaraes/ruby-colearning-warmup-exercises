require "date"
def generate_dates(quantity)
  array = [] 
  0.upto(quantity).each do |number|
    inside = Date.today + number
    array.push inside
  end
  array
end

array = generate_dates(2)

var_shuffle = array.shuffle
var_random_element = shuffle[0]
var_today = Date.today
if var_random_element == var_today
  puts "it is your birthday"
else
  puts "no, no, keep on waiting"
end



