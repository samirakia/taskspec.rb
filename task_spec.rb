require 'rspec'
require_relative 'task2'

describe Task do
  it "is a thing" do
    expect{Task.new}.to_not raise_error
  end
  it "has title" do
      aTask = Task.new
      expect(aTask.title).to be_a String
  end
  it "always has description" do
      aTask = Task.new
      expect(aTask.description).to be_a String
  end
  it "can be marked as task_done" do
      aTask=Task.new
      expect(aTask.task_done).to eql "complete"
  end
  it "status will be shown if the task is done" do
    aTask = Task.new
    expect(aTask.task_p).to eql "task is complete"

  end
  it "I have a list of tasks" do
    aTask1 =Task.new
    aTask2=Task.new
    aTask3=Task.new
    aTasklist=Task_list.new
    aTasklist.add_task(aTask1)
    aTasklist.add_task(aTask2)
    aTasklist.add_task(aTask3)
    expect(aTasklist.print_tasklist).to match_array([aTask1,aTask2,aTask3])
  end
  it "can create completed and incompleted task list" do
    task1=Task.new
    task2=Task.new
    task3=Task.new
    task4=Task.new
    task1.task_done
    task3.task_done
    tasklist = Task_list.new
    tasklist.add_task(task1)
    tasklist.add_task(task2)
    tasklist.add_task(task3)
    tasklist.add_task(task4)
    tasklist.process_status

    expect(tasklist.show_complete_list).to match_array([task1,task3])
    expect(tasklist.show_incomplete_list).to match_array([task2,task4])
  end
  it "has due date!" do
    duedatetask = DueDateTask.new
    duedatetask.duedate2('2009-12-3')
    expect(uedatetask.duedate).to_not raise_error
  end


end
