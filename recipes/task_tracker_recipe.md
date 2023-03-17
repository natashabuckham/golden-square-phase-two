# {{PROBLEM}} Method Design Recipe


## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.



## 2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
# EXAMPLE

# `task_tracker` checks if a string contains '#TODO'
task_tracker(text) => boolean
text: a string (e.g. "#TODO")

# The method doesn't print anything or have any other side-effects
```



## 3. Create Examples as Tests

Make a list of examples of what the method will take and return.

```ruby
# EXAMPLE

task_tracker("#TODO") => true
task_tracker("HELLO WORLD") => false
task_tracker(12) => throws an error
task_tracker(["#TODO", "HELLO WORLD"]) => true false
task_tracker("") => false
```

Encode each example as a test. You can add to the above list as you go.



## 4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
