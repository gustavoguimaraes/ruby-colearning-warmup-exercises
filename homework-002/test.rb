array = "windows cat stove pan scarf".split
hannibal = [] 
array.each do |i|
  if i.length < 4
    hannibal.push i
  end
end
puts hannibal 
