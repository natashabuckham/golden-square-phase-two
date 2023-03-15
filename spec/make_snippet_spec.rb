require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns first five words of a string" do
    string = "This string is five words"
    expect(make_snippet(string)).to eq "This string is five words"
  end

  it "returns the first five words plus ... for a string longer than five words" do
    string = "This string is longer than five words"
    expect(make_snippet(string)).to eq "This string is longer than..."
  end
end
