# require_relative './diary_entry'

class Diary
  def initialize
    @entry_list = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @entry_list << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    @entry_list
  end

  def count_words_diary
    total = 0
    @entry_list.each do |entry|
      total += entry.count_words
    end
    total
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time_diary(wpm)
    total = 0
     @entry_list.each do |entry|
      total += entry.reading_time(wpm)
     end
     total
    # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    chunk_size = wpm * minutes
    closest_entry = nil
    closest_size = 0
    @entry_list.each do |entry|
      if entry.count_words > chunk_size # if entry is longer than we can read, discount it
        next
      elsif
        entry.count_words > closest_size # if entry is larger than current largest entry, reassign those variables
        closest_entry = entry
        closest_size = entry.count_words
      else
        next
      end
    end
    closest_entry
  end
end
