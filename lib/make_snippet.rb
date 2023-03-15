# takes a string as an argument and returns
# the first five words and then a '...' if there are
# more than that

def make_snippet(string)
  string.split.length < 6 ? string : "#{string.split[0..4].join(' ')}..."
end
