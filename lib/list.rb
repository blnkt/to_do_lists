class List
  def initialize(list_title)
    @list_title = list_title
    @tasks = []
    @completed_tasks = []
  end
  def tasks
    @tasks
  end
  def completed_tasks
    @completed_tasks
  end
  def add_task(task)
    @tasks << task
  end
  def remove_task(task)
    @tasks.delete(task)
    @completed_tasks << task
  end
  def sort_by_date
    @tasks.sort_by! do |task|
      month,day = task.date.split("/")
      [month.to_i,day.to_i]
    end
  end
end
