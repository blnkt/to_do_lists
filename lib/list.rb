class List
  def initialize(list_title)
    @list_title = list_title
    @tasks = []
    @completed_tasks = []
  end
  def add_task(task)
    @tasks << task
  end
  def remove_task(task)
    @tasks.delete(task)
    @completed_tasks << task
  end
  def tasks
    @tasks
  end
  def completed_tasks
    @completed_tasks
  end
end
