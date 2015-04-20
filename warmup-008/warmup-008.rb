# Name: Words Highlighter
# Instructions:
# Some long, very long texts have many words. Many of them are repeated
# so much time that our team is unable to count them.
# Could you read the text for us and send us the same text with the words upcased?
# Only if the words repeats more than twice..
# and maybe can we choose the amount of more importants one? Maybe only the first 10 more repeated

#example:
# "Bu ba mu er ro mo ba fu me go ba mo ge mo"

# "Bu BA mu er ro MO BA fu me go BA MO ge MO"



def words_highlighter(text, num_repeated)
  @array2 = []
  @array = []
  @cond = ""
  count_hash(text)
  select_array(num_repeated)
  compose_string
end
  

private

def count_hash(text)
  @hash = Hash.new(0)
  @array = text.split
  @array.each do |words|
    @hash[words] += 1
  end
  @hash
end

def select_array(num_repeated)
  @hash.each do |key, value|
    if value >= num_repeated
      @array2 << key
    end
  end
  @array2
end

def compose_string
  out = @array.map do |x| 
    @array2.each do |y|
      if x == y
        @cond = true
        break
      else
        @cond = false
      end
    end
    if @cond == true
      x.upcase
    else
      x
    end
  end
  out.join(" ")
end





