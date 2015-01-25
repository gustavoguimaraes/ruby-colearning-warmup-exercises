person1 = {} 
person2 = {} 
person3 = {} 


person1 = {first: "Fathers first name", last: "Fathers last name"} 
person2 = {first: "Mothers first name", last: "Mothers last name"}
person3 = {first: "Childs first name", last: "Childs last name"} 


params = {father: person1, mother: person2, child: person3}
puts params[:father][:first]
puts params[:mother][:last]
