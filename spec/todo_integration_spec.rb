require 'todo_list'
require 'todo'

RSpec.describe "Todo list integration" do
  it "adds todos and returns a list of them" do
    list = TodoList.new
    todo_1 = Todo.new("Buy bread")
    todo_2 = Todo.new("Walk the dog")
    list.add(todo_1)
    list.add(todo_2)
    expect(list.incomplete).to eq [todo_1, todo_2]
  end

  it "returns a list of complete tasks" do
    list = TodoList.new
    todo_1 = Todo.new("Buy bread")
    todo_2 = Todo.new("Walk the dog")
    list.add(todo_1)
    list.add(todo_2)
    todo_1.mark_done!
    expect(list.complete).to eq [todo_1]
  end

  it "marks all todos as complete" do
    list = TodoList.new
    todo_1 = Todo.new("Buy bread")
    todo_2 = Todo.new("Walk the dog")
    list.add(todo_1)
    list.add(todo_2)
    todo_1.mark_done!
    expect(list.give_up!).to eq [todo_1, todo_2]
  end

end
