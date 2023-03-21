class Todo
  def initialize(task) # task is a string
    @task = task
    @status = false
  end

  def task
    @task
    # Returns the task as a string
  end

  def mark_done!
    @status = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    @status
    # Returns true if the task is done
    # Otherwise, false
  end
end
