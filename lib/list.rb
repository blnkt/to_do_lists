class List
  def initialize(list_title)
    @list_title = list_title
    @tasks = []
  end
  def add_task(task)
    @tasks << task
  end
  def tasks
    @tasks
  end
end
