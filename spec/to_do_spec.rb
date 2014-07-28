require 'rspec'
require 'task'
require 'list'

describe Task do
  it "initializes a new task with a description" do
    new_task = Task.new("Stuff to do")
    expect(new_task).to be_an_instance_of Task
  end

  it "adds a due date to the task" do
    new_task = Task.new("Weed the garden")
    new_task.add_date("7/31")
    expect(new_task.date).to eq "7/31"
  end

  it "adds a priority level to the task" do
    new_task = Task.new("Weed the garden")
    new_task.add_date("7/31")
    new_task.add_priority("4")
    expect(new_task.priority).to eq "4"
  end
end

describe List do
  it "initializes a new list with a title to add new tasks to" do
    new_list = List.new("List Title")
    expect(new_list).to be_an_instance_of List
  end

  it "adds a task to a list" do
    new_list = List.new("Test List")
    new_task = Task.new("Item One")
    new_list.add_task(new_task)
    expect(new_list.tasks[0].description).to eq "Item One"
  end

  it "remove a task from a list" do
    new_list = List.new("Test List")
    new_task = Task.new("Item One")
    other_task = Task.new("Item Two")
    new_list.add_task(new_task)
    new_list.add_task(other_task)
    new_list.remove_task(new_task)
    expect(new_list.tasks.length).to eq 1
    expect(new_list.completed_tasks.length).to eq 1
  end
end
