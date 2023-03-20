require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Monday", "Hello " * 200)
    expect(entry.title).to eq "Monday"
    expect(entry.contents).to eq "Hello " * 200
  end

  it "returns number of words in contents" do
    entry = DiaryEntry.new("Monday", "Hello " * 200)
    expect(entry.count_words).to eq 200
  end

  it "returns the reading time in minutes given a wpm" do
    entry = DiaryEntry.new("Monday", "Hello " * 200)
    expect(entry.reading_time(200)).to eq 1
  end

  describe "#reading_chunk" do
    it "returns a string with a chunk of the contents that the user could read in given minutes" do
      diary_entry = DiaryEntry.new("my_title", ("word " * 1000))
      expect(diary_entry.reading_chunk(200, 2)).to eq (("word " * 399) + "word")
    end

    it "returns the next chunk of words the user could read in given minutes" do
      diary_entry = DiaryEntry.new("my_title", ("word " * 400) + ("next " * 400) + ("thing " * 400))
      diary_entry.reading_chunk(200, 2)
      expect(diary_entry.reading_chunk(200, 2)).to eq (("next " * 399) + "next")
    end

    it "restarts from the beginning once the contents have been fully read" do
      diary_entry = DiaryEntry.new("my_title", ("word " * 400) + ("next " * 400) + ("thing " * 400))
      diary_entry.reading_chunk(200, 2)
      diary_entry.reading_chunk(200, 2)
      diary_entry.reading_chunk(200, 2)
      expect(diary_entry.reading_chunk(200,2)).to eq (("word " * 399) + "word")
    end
  end
end
