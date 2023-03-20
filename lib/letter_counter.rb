class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) # sets default value to 0
    most_common_letter = nil
    most_common_count = 0
    @text.chars.each do |char|
      next unless is_letter?(char)
      counter[char] = counter[char] + 1  # assigns a new key value or updates value if key already exists
      if counter[char] > most_common_count
        most_common_letter = char
        most_common_count = counter[char]
      end
    end
    return [most_common_count, most_common_letter]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

letter_counter = LetterCounter.new("Digital Punk")
p letter_counter.calculate_most_common

