require_relative '../lib/test_class_diary'

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "#count_words" do
    it "returns number of words in contents" do
      diary_entry = DiaryEntry.new("my_title", "some contents here")
      expect(diary_entry.count_words).to eq 3
    end

    it "returns zero when contents is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    it "returns the reading time in minutes given an wpm" do
      diary_entry = DiaryEntry.new("my_title", ("word " * 200))
      expect(diary_entry.reading_time(200)).to eq 1
    end

    it "returns an estimated reading time in minutes" do
      diary_entry = DiaryEntry.new("my_title", ("word " * 500))
      expect(diary_entry.reading_time(200)).to eq 2
    end
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
