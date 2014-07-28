require 'rspec'
require 'task'
require 'list'

describe Task do
  it "initializes a new task with a description" do
    new_task = Task.new("Stuff to do")
    expect(new_task).to be_an_instance_of Task
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
end
