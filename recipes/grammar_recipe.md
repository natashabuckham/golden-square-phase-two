# {{PROBLEM}} Method Design Recipe


## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.



## 2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
# EXAMPLE

# `grammar` verifies that a string starts with a capital letter and ends with a sentence-ending punctuation mark.
result = grammar(text)

text: a string (e.g. "This is a sentence.")
result: one of two strings saying that the sentence is grammatically correct or not.

# The method prints the result
```

## 3. Create Examples as Tests

Make a list of examples of what the method will take and return.

```ruby
# EXAMPLE

grammar("This is a sentence.") => "Your text is gramatically correct."
grammar("This is a sentence") => "Your text is gramatically incorrect."
grammar("this is a sentence.") => "Your text is gramatically incorrect."
grammar("This is a sentence!") => "Your text is gramatically correct."
grammar("This is a sentence?") => "Your text is gramatically correct."
grammar("") => "No text was entered."
grammar(nil) throws an error
```

Encode each example as a test. You can add to the above list as you go.



## 4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
