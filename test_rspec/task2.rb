
require 'date'

class Task
  attr_accessor :title, :discription, :status

  def initialize
    @title = "untitled"
    @discription = "undiscribed"
    @status = "incompelete"
  end

  def title
    @title
  end

  def description
    @discription
  end
  def task_done
    @status = "complete"
  end
  def task_p
    if @status = "complete"
      p "task is #{@status}"
    end
  end
  # def show_status
  #   @status
  # end
end

t = Task.new

p t.status

class Task_list
  def initialize
    @tasklist = []
    @completed = []
    @incompleted = []
  end

  def add_task (new_task)
    @tasklist.push(new_task)

  end
  def print_tasklist
    p @tasklist
  end
  def process_status
    @tasklist.each do |task_l|
      if task_l.show_status == "complete"
        @completed.push(task_l)
      else
        @incompleted.push(task_l)
      end
    end
  end
  def show_complete_list
    @completed
  end
  def show_incomplete_list
    @incompleted
  end
end
class DueDateTask < Task
  def initialize
   @duedate = Date.new(2001,3,2)
  end
  def duedate
    @duedate
  end
  def duedate2(str)
    @duedate.parse(str)
  end
end
