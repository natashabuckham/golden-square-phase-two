require_relative '../lib/grammar_stats'

RSpec.describe GrammarStats do
  describe "#check" do
    it "returns true if text begins with a capital and ends with punctuation" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("This is a sentence.")
      expect(result).to eq true
    end

    it "returns false if text doesn't begin with a capital" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("this is a sentence.")
      expect(result).to eq false
    end

    it "returns false if text doesn't end with a punctuation" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("This is a sentence")
      expect(result).to eq false
    end
  end

  describe "#percentage_good" do
    it "returns as an integer the percentage of texts checked so far that returned true" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("This is a sentence.")
      grammar_stats.check("this is a sentence.")
      result = grammar_stats.percentage_good
      expect(result).to eq 50
    end
  end

end
