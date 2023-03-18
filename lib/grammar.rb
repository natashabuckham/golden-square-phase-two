def grammar(text)
  if text[0] == text[0].upcase && text[-1] =~ /[!.?]/
    return true
  else
    return false
  end
end
