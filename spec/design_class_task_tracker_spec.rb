require_relative '../lib/design_class_task_tracker'

RSpec.describe TaskTracker do
  it "adds tasks to a list which is viewable" do
    task_tracker = TaskTracker.new
    task_tracker.add("Walk the dog")
    task_tracker.add("Buy bread")
    expect(task_tracker.view_tasks).to eq ["Walk the dog", "Buy bread"]
  end

  it "fails if task list is empty" do
    task_tracker = TaskTracker.new
    expect{ task_tracker.view_tasks }.to raise_error "Task list empty"
  end

  it "removes task from the list when they are marked as complete" do
    task_tracker = TaskTracker.new
    task_tracker.add("Walk the dog")
    task_tracker.add("Buy bread")
    task_tracker.complete("Walk the dog")
    expect(task_tracker.view_tasks).to eq ["Buy bread"]
  end
end
