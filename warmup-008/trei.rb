a = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id mi id nisl sagittis varius non id leo. Nunc ornare orci diam, vitae eleifend odio malesuada vel. Curabitur mollis turpis eu nibh tempor, at aliquet sem iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin et quam id dui vulputate dapibus ut et mauris. Duis tincidunt quam a semper scelerisque. Cras turpis risus, scelerisque vitae auctor nec, placerat quis dui. Fusce neque diam, porttitor ac ultricies eget, laoreet ac arcu. Sed dolor urna, lacinia nec dolor vel, pharetra lobortis sem. Morbi imperdiet sodales eros id convallis. Praesent facilisis bibendum erat in aliquam. Aenean ut varius orci, in commodo justo. Mauris tempus nunc quis ipsum aliquet volutpat at sed dolor. Nam vitae ligula mauris. Duis tempor urna a nisl efficitur faucibus.".split

b = ["Lorem", "ipsum", "dolor", "sit", "amet,", "consectetur", "adipiscing", "elit.", "Sed", "id", "mi", "id"]

#b.each do |word| 
#  a.each do |wordb|
#    if wordb == word
#      array << "#{wordb.upcase} "
#    else
#      string << "#{wordb} "
#    end
#  end
#end

#c = a
#a.each_with_index do |worda, index|
#  b.each do |wordb| 
#    if worda == wordb
#      c.delete_at index
#      # c.insert("#{index}, #{wordb.upcase}")
#    end
#  end
#end
#print c

#e = a.map do |x| 
#  b.each do |word|
#    if word  == x
#      x.upcase
#    end
#  end
#end
#print e
cond = ""
f = a.map do |x| 
  b.each do |y|
    if x == y
      cond = true
      break
    else
      cond = false
    end
  end
  if cond == true
    x.upcase
  else
    x
  end
end
print f






