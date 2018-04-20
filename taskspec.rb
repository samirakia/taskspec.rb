require 'rspec'
require_relative 'task'
require_relative 'TaskList'


describe Task do


 it"we have tasks to do!" do
   expect{Task.new}.to_not raise_error
 end

it " always start from task one!" do
  a_task =Task.new
  expect(a_task.task_one).to be_a String
  expect(a_task.task_one).to eq "uncompleted"
end

it "has list of tasks"do
  a_task = Task.new
  a_task.task_one = "you have completed your first task!"
  expect(a_task.task_one).to eq "you have completed your first task!"
end


end

 describe TaskList do

    it "lets start" do
      atask = TaskList.new
      expect{atask.task1}object.stub(:status).and_return("task_one_done")
      expect{atask.task2}object.stub(:status).and_return("task_two_done")
      expect{atask.task3}object.stub(:status).and_return("task_three_done")

    end
 end
