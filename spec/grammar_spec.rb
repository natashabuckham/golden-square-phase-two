require 'grammar'

RSpec.describe "grammar method" do
  context "the method is passed a string which starts with a capital and ends with punctuation" do
    it "tells user it is correct if it starts with capital and ends with full stop" do
      text = "This is a sentence."
      expect(grammar(text)).to eq "Your text is gramatically correct."
    end

    it "tells the user it is correct if it starts with capital and ends with an exclamation mark" do
      text = "This is a sentence!"
      expect(grammar(text)).to eq "Your text is gramatically correct."
    end

    it "tells the user it is correct if it starts with capital and ends with a question mark" do
      text = "This is a sentence?"
      expect(grammar(text)).to eq "Your text is gramatically correct."
    end
  end

  context "the method is passed a string which doesn't start with a capital letter and/or doesn't end with punctuation" do
    it "tells the user it is incorrect if it doesn't start with a capital letter" do
      text = "this is a sentence."
      expect(grammar(text)).to eq "Your text is gramatically incorrect."
    end

    it "tells the user it is incorrect if it doesn't end with punctuation" do
      text = "This is a sentence"
      expect(grammar(text)).to eq "Your text is gramatically incorrect."
    end

    it "tells the user it is incorrect if it doesn't end with punctuation or start with a capital" do
      text = "this is a sentence"
      expect(grammar(text)).to eq "Your text is gramatically incorrect."
    end
  end
end
