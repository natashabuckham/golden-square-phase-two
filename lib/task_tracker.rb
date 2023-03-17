def task_tracker(text)
  fail "This is not a string" if !text.is_a? String
  text.split.include?("#TODO")
end


