require 'diary'
require 'diary_entry'

RSpec.describe "Integration" do
  it "returns an instance of a diary entry" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Hello " * 200)
    diary.add(entry_1)
    expect(diary.all).to eq [entry_1]
  end

  it "returns a list of multiple instance of diary entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Hello " * 200)
    entry_2 = DiaryEntry.new("Tuesday", "World " * 200)
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.all).to eq [entry_1, entry_2]
  end

  it "returns number of words in all diary entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Hello " * 200)
    entry_2 = DiaryEntry.new("Tuesday", "World " * 200)
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words_diary).to eq 400
  end

  it "returns estimated reading time for all entries together" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Hello " * 200)
    entry_2 = DiaryEntry.new("Tuesday", "World " * 200)
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time_diary(200)).to eq 2
  end

  it "returns an instance of diary entry which best matches given reading time" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "Hello " * 200)
    entry_2 = DiaryEntry.new("Tuesday", "World " * 1000)
    entry_3 = DiaryEntry.new("Wednesday", "Universe " * 100)
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    expect(diary.find_best_entry_for_reading_time(300, 1)).to eq entry_1
  end

end

# diary.best_entry_reading_time Returns an instance of diary entry representing the entry that is closest to, but not over, the length that the user could read in the minutes they
# have available given their reading speed.
