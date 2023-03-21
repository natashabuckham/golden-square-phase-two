require 'todo'

RSpec.describe Todo do
  it "constructs" do
    todo = Todo.new("Buy bread")
    expect(todo.task).to eq "Buy bread"
  end

  it "marks tasks as done" do
    todo = Todo.new("Buy bread")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
end
