# DRY - Don't repeat yourself 

# def greet(name)
#   puts "Hafa Adai #{name}"
# end 

# greet("Leon")

# Exercise

# def square(number)
#   puts number * number
# end

# square(5)
# square(10)
# square(20)

# exercise done

# names = ["Jess", "Noah", "Alanna", "Charles", "Damen", "Audreana"]

# def greet(array)
#   array.each do |name|
#     puts "Hi #{name}"
#     # p "Hi #{name}"
#   end
# end
# greet(names)

# exercise

# ?

# numbers = [1, 2, 3, 4, 5]

# def get_even_number(nums)
#   even_numbers = []

#   nums.each do |n|
#     if n.even?
#       even_numbers.push(n)
#     end
#   end

#   return even_numbers
# end

# p get_even_number{numbers}

# Task: Write a method called filter_short_words that takes an array of words and returns a new array with words longer than 3 characters.
# Instructions:
# Define the filter_short_words method.
# Test it with different word arrays.

# words = ["Shoes", "Phone", "Glass", "Kit"]

# def filter_short_words(word)
#   long_words = []
  
#   word.each do |w|
#     if w.length > 3
#       long_words.push(w)
#     end
#   end
#   return long_words 
# end

# p filter_short_words(words)

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
# 2. creat a display menu with options [Add task, view task, mark task as complete, delete task, and exit]in requires 
# every input user is putting in requires gets.chomp
# 3. when user adds tasks, prompt user to enter description
# 4. store description into an array
#5. when user view tasks, show all tasks with status (completed/not completed)
# 6. when user clicks mark task, user clicks specific task as completed
#7. when user delete task, 