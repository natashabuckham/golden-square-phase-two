def count_words(str)
  string_array = str.split
  new_array =[]
  string_array.each do |word|
    if word =~ /[\w]/
       new_array.push(word)
    end
  end
  new_array.length
end
