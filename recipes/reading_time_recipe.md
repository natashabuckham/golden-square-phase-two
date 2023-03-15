# {{PROBLEM}} Method Design Recipe


## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.



## 2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
# `reading_time` returns reading time when passed a string
time = reading_time(text)

text: a string (e.g. "hello world")
time: a string (e.g. "0.6 seconds")

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

Make a list of examples of what the method will take and return.

```ruby
reading_time("hello world hello world") => "1.6 seconds"
reading_time(100_words) => "30 seconds"
reading_time(200_words) => "1 minute"
reading_time(400_words) => "2 minutes"
reading_time(12000_words) => "1 hour"
reading_time(24000_words) => "2 hours"
reading_time("") => "0 seconds"
reading_time(nil) => throws an error
```

Encode each example as a test. You can add to the above list as you go.



## 4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
