def words_highlighter(text)
  string = ""
  hash = Hash.new(0)
  array = text.split
  array.each do |words|
    hash[words] += 1
  end
  hash.sort_by(&:last)
end
