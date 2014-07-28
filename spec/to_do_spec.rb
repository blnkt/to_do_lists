require 'rspec'
require 'task'
require 'list'

describe Task do
  it "initializes a new task with a description" do
    new_task = Task.new("Stuff to do")
    expect(new_task).to be_an_instance_of Task
  end
end

