# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_As a user_
_So that I can keep track of my music listening_
_I want to add tracks I've listened to and see a list of them._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize
    # @track_list = []
  end

  def listen_to(track) # track is a string
    # No return value
    # Throws an exception if track is not a string
  end

  def view_tracks
    # Throws an exception if no tracks listed
    # Otherwise, returns a list of tracks listened to
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
music_library = MusicTracker.new
music_library.listen_to("song one")
music_library.view_tracks # => ["song one"]

# 2
music_library = MusicTracker.new
music_library.view_tracks # => fails with "No tracks listened to."

# 3
music_library = MusicTracker.new
music_library.listen_to("song one")
music_library.listen_to("song two")
music_library.view_tracks # => ["song one", "song two"]

# 4
music_library = MusicTracker.new
music_library.listen_to(12) # => fails with "Track must be a string."
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
