def reading_time(text)
  length = text.split.length
  time = length / 3.33333333333

  if length > 199
    "#{(time / 60).to_i} minutes #{(time % 60).to_i} seconds"
  else
    "#{time.round(1)} seconds"
  end
end

# 3.3 recurring words per second
# 200 words per minute
