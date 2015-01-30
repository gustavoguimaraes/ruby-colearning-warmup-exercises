class Fixnum
  def float?
   test2 = self == self.to_i
    if test2 == true
     message = false 
    else
      message = true
    end
    message
  end
end

class Float 
  def float?
   test2 = self == self.to_i
    if test2 == true
     message = false
    else
      message = true 
    end
    message
  end
end

