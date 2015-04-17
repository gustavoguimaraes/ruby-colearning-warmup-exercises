
string = ""
hash = {"Lorem"=>1, "ipsum"=>2, "dolor"=>3, "sit"=>1, "amet,"=>1, "consectetur"=>1, "adipiscing"=>1, "elit."=>1, "Sed"=>2, "id"=>5, "mi"=>1, "nisl"=>2, "sagittis"=>1, "varius"=>2, "non"=>1, "leo."=>1, "Nunc"=>1, "ornare"=>1, "orci"=>1, "diam,"=>2, "vitae"=>3, "eleifend"=>1, "odio"=>1, "malesuada"=>1, "vel."=>1, "Curabitur"=>1, "mollis"=>1, "turpis"=>2, "eu"=>1, "nibh"=>1, "tempor,"=>1, "at"=>2, "aliquet"=>2, "sem"=>1, "iaculis."=>1, "Class"=>1, "aptent"=>1, "taciti"=>1, "sociosqu"=>1, "ad"=>1, "litora"=>1, "torquent"=>1, "per"=>2, "conubia"=>1, "nostra,"=>1, "inceptos"=>1, "himenaeos."=>1, "Proin"=>1, "et"=>2, "quam"=>2, "dui"=>1, "vulputate"=>1, "dapibus"=>1, "ut"=>2, "mauris."=>2, "Duis"=>2, "tincidunt"=>1, "a"=>2, "semper"=>1, "scelerisque."=>1, "Cras"=>1, "risus,"=>1, "scelerisque"=>1, "auctor"=>1, "nec,"=>1, "placerat"=>1, "quis"=>2, "dui."=>1, "Fusce"=>1, "neque"=>1, "porttitor"=>1, "ac"=>2, "ultricies"=>1, "eget,"=>1, "laoreet"=>1, "arcu."=>1, "urna,"=>1, "lacinia"=>1, "nec"=>1, "vel,"=>1, "pharetra"=>1, "lobortis"=>1, "sem."=>1, "Morbi"=>1, "imperdiet"=>1, "sodales"=>1, "eros"=>1, "convallis."=>1, "Praesent"=>1, "facilisis"=>1, "bibendum"=>1, "erat"=>1, "in"=>2, "aliquam."=>1, "Aenean"=>1, "orci,"=>1, "commodo"=>1, "justo."=>1, "Mauris"=>1, "tempus"=>1, "nunc"=>1, "volutpat"=>1, "sed"=>1, "dolor."=>1, "Nam"=>1, "ligula"=>1, "tempor"=>1, "urna"=>1, "efficitur"=>1, "faucibus."=>1}
hash.each do |key, value|
  if value > 1
    string << "#{key.upcase} "
  else
    string << "#{key} "
  end
end
    
puts string
 
