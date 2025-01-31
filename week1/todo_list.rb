# Command-Line To-Do List Application
# Project Requirements:
# User Interface:
# Display a menu with options:
# Add a task
# View tasks
# Mark task as completed
# Delete a task
# Exit
# Functionalities:
# Add a Task:
# Prompt the user to enter a task description.
# Store the task in an array.
# View Tasks:
# Display all tasks with their status (completed/not completed).
# Mark Task as Completed:
# Allow the user to mark a specific task as completed.
# Delete a Task:
# Allow the user to delete a specific task.
# Exit:


# Terminate the application.
# Task: Write pseudocode to plan the application logic.
# Instructions:
# Break down the project into smaller tasks.
# Identify the methods you'll need.
# Consider how you'll store and manage the tasks.

# breakdown
# 1. make to-do list application
# 2. create a display menu with options [Add task, view task, mark task as complete, delete task, and exit]in requires 
# every input user is putting in requires gets.chomp
# 3. when user adds tasks, prompt user to enter description
# 4. store description into an array
#5. when user view tasks, show all tasks with status (completed/not completed)
# 6. when user clicks mark task, user clicks specific task as completed
#7. when user delete task, 

def add_list(task) 
  puts "What would you like to add?"
  item = gets.chomp
  task.push(item)
  puts "You added #{item} to your list! #{task}"
  return task
end

def view_list(task)
  puts "Current To Do List:"
  task.each_with_index do |item, index|
  puts "#{index +1 }"
    end
end

def complete_list(task)
  puts "Mark number of the task as completed"
  index = gets.chomp.to_i - 1
    if task[index]
      task[index] = "#{task[index]} - completed"
      puts "Task marked as completed."
    else 
        puts "Invalid response."
      end 
end 


def delete_list(task)
  puts "What would you like to delete?"
  item = gets.chomp
  task.delete(item)
  puts "You deleted #{item} from your list"
end


todo_list = []
loop do
  puts "________________________________"
  puts "\nTo Do List Menu:"
  puts "1 Add Task:"
  puts "2 View Tasks:"
  puts "3 Mark task as complete"
  puts "4 Delete Task:"
  puts "5 Exit"
  puts "_________________________________"
  choice = gets.chomp.to_i 
  
  if choice == 1
    puts add_list(todo_list)

  elsif choice == 2
    puts view_list(todo_list)
   
  elsif choice == 3
    puts complete_list(todo_list)
    
  elsif choice == 4
    puts delete_list(todo_list)

  elsif choice == 5
    puts "cya"
    break
  end 
end 