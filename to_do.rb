require "./lib/task"
require "./lib/list"

@lists = []

def main_menu
  list_counter = 0
  @lists.each do |list|
    list_counter += 1
    puts "#{list_counter}. #{list.title}\n\n"
  end
  puts "Press 'a' to add a new list."
  if @lists.length > 0
    puts "To view a list enter its cooresponding number."
  end
  main_choice = gets.chomp
  if main_choice == 'a'
    add_list
  elsif main_choice != 'a'
    list_choice = main_choice
    task_counter = 0
    puts @lists[list_choice.to_i-1].title
    @lists[list_choice.to_i-1].tasks.each do |task|
      puts "#{task_counter}. #{task.description}"
      task_counter=+1
    end
    puts "Press 'a' to add a new task to this list.  To select a task enter its cooresponding number. Press 'x' to return to the Main Menu"
    task_choice = gets.chomp
    if task_choice == 'a'
      @lists[list_choice.to_i-1].add_new_task
    end
  end
end

def add_list
  puts "Enter a title for your new list."
  list_title = gets.chomp
  @lists << List.new(list_title)
  puts "List added.\n\n"
  main_menu
end

def add_new_task
  puts "Enter the name of the task."
  task_title = gets.chomp
  @tasks << Task.new(task_title)
  puts "Task added.\n\n"
end

main_menu
