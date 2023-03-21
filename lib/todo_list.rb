class TodoList
  def initialize
    @all_todos = []
  end

  def add(todo) # todo is an instance of Todo
    @all_todos << todo
    # Returns nothing
  end

  def incomplete
    @incomplete_todos = []
    @all_todos.each do |todo|
      if !todo.done?
        @incomplete_todos << todo
      else
        next
      end
    end
    @incomplete_todos
    # Returns all non-done todos
  end

  def complete
    @complete_todos = []
    @all_todos.each do |todo|
      if todo.done?
        @complete_todos << todo
      else
        next
      end
    end
    @complete_todos
    # Returns all complete todos
  end

  def give_up!
    @all_todos.each do |todo|
      todo.mark_done!
    end
    # Marks all todos as complete
  end
end
