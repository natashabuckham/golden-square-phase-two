class TaskTracker
  def initialize
    @task_list = []
  end

  def add(task)
    @task_list << task
  end

  def view_tasks
    fail "Task list empty" if @task_list.empty?
    @task_list
  end

  def complete(task)
    @task_list.each do |item|
      if item == task then @task_list.delete(item) end
    end
  end
end
