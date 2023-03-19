# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_As a user_

_So that I can keep track of my tasks_

_I want a program that I can add todo tasks to and see a list of them._

_As a user_

_So that I can focus on tasks to complete_

_I want to mark tasks as complete and have them disappear from the list._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TaskTracker
  def initialize
    # @task_list = []
  end

  def add(task) # task is a string
    # No return value
    # Adds task to list
  end

  def view_tasks
    # Throws an exception if no task have been added
    # Otherwise, returns a task list (with index numbers?)
  end

  def complete(task) # task is a string, could be an index number?
    # Throws an exception if that task doesn't exist in task_list
    # No return value, (or could return message confirming task has been marked as complete?)
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
task_tracker = TaskTracker.new
task_tracker.add("Walk the dog")
task_tracker.view_tasks # => ["Walk the dog"]

# 2
task_tracker = TaskTracker.new
task_tracker.add("")
task_tracker.view_tasks # fails with "No task set."

# 3
task_tracker = TaskTracker.new
task_tracker.add("Walk the dog")
task_tracker.add("Buy bread")
task_tracker.view_tasks # => ["Walk the dog", "Buy bread"]

# 4
task_tracker = TaskTracker.new
task_tracker.add("Walk the dog")
task_tracker.add("Buy bread")
task_tracker.complete("Walk the dog")
task_tracker.view_tasks # => ["Buy bread"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
