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
  string = ""
  hash = Hash.new(0)
  array = text.split
  array.each do |words|
    hash[words] += 1
  end
  hash.each do |key, value|
    if value >= 3 #num_repeated
      string << "#{key.upcase} "
    else
      string << "#{key} "
    end
  end
  string
end

#
#text = "lorem ipsum dolor sit amet, consectetur adipiscing elit. sed id mi id nisl sagittis varius non id leo. nunc ornare orci diam, vitae eleifend odio malesuada vel. curabitur mollis turpis eu nibh tempor, at aliquet sem iaculis. class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. proin et quam id dui vulputate dapibus ut et mauris. duis tincidunt quam a semper scelerisque. cras turpis risus, scelerisque vitae auctor nec, placerat quis dui. fusce neque diam, porttitor ac ultricies eget, laoreet ac arcu. sed dolor urna, lacinia nec dolor vel, pharetra lobortis sem. morbi imperdiet sodales eros id convallis. praesent facilisis bibendum erat in aliquam. aenean ut varius orci, in commodo justo. mauris tempus nunc quis ipsum aliquet volutpat at sed dolor. nam vitae ligula mauris. duis tempor urna a nisl efficitur faucibus."


# words_highlighter(text, 3)
