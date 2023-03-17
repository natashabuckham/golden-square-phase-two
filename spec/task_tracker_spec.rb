require 'task_tracker'

RSpec.describe 'task_tracker method' do
  it "returns true when passed a string containing '#TODO'" do
    text = "#TODO"
    expect(task_tracker(text)).to eq true
  end

  it "returns false when passed a string not containing '#TODO'" do
    text = "HELLO WORLD"
    expect(task_tracker(text)).to eq false
  end

  context "when passed a value which is not a string" do
    it "fails" do
      text = 12
      expect{ task_tracker(text) }.to raise_error "This is not a string"
    end
  end
end
