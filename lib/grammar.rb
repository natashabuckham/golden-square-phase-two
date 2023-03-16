def grammar(text)
  if text[0] == text[0].upcase && text[-1] =~ /[!.?]/
    "Your text is gramatically correct."
  else
    "Your text is gramatically incorrect."
  end
end
