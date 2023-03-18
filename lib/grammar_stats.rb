class GrammarStats
  def initialize
    @total_checks = 0
    @passed_checks = 0
  end

  def check(text) # text is a string
    if text[0] == text[0].upcase && text[-1] =~ /[!.?]/
      @passed_checks += 1
      @total_checks += 1
      true
    else
      @total_checks += 1
      false
    end
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    ((@passed_checks.to_f / @total_checks.to_f) * 100).to_i
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

