def get_most_common_letter(text)
  counter = Hash.new(0) # 0 is set as the default value when accessing keys that don't exist in the has
  text.chars.each do |char| # splits the text into an array of characters and iterates through each one
    counter[char] += 1
    # p counter # building up a hash where keys are characters and values are the number of times it appears, incl spaces
  end
  # p counter.to_a # an array of arrays, with format [['t', 3], ['h', 3]] etc.
  # p counter.to_a.sort_by { |k, v| v } # sorts array smallest to largest, need to use .reverse after
  sorted_counter = counter.to_a.sort_by { |k, v| v }.reverse # takes first key, it's whitespace which we want to ignore
  if sorted_counter[0][0].match?(/\s/) # check if first key in array is whitespace, if it is, return the second key
    sorted_counter[1][0]
  else
    sorted_counter[0][0] # if the first key isn't whitespace, return the first key
  end
end

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"


