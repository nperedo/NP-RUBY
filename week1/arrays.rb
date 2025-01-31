# numbers = [1, 2, 3, 4, 5]
# names = ["Jess", "Noah", "Alanna"]

# puts numbers
# or
# p numbers 

# p names[1]

# EXERCISE

#food = ["Steak", "Sushi", "Pizza", "Tacos"]

# puts food[3]
#p food

#modifying/re-defining a specific index
# p names
# names[1] = "Damen"
# p names 

# same thing with numbers

# Add to the aray - .push (adds to the end of the array)
# p names
#names.push("Charles")
# p names 

# Add to the array - .insert(specific index number, "___")
# p names.insert(1, "Steve")

#remove an index - .pop (specifically end of the array)

# p names 
# names.pop
# p names

# remove a specific index - .delete (index)
# p names 
# names.delete("Noah")
# p names

# Exercise 

# food = ["Steak", "Sushi", "Pizza", "Tacos"]

#p food 
# food.delete ("Pizza")
#p food


#Iterating over arrays

# numbers = [1, 2, 3, 4, 5]
# names = ["Jess", "Noah", "Alanna"]

# puts names.length
# puts numbers.length

# while loop
# i = 0
# while i < 5
  # puts "Hello Class"
  # i +=1  # i = i + !
# end 

# i = 0
# while i < names.length # 2
  # puts names[i]
  # i += 1
# end 

# each loop
# numbers.each do |i|
  # puts i 
# end


# numbers.each do |i|
  # puts i + 1
# end

# for loop 
# for name in names 
#  puts name
# end

# Exercise
# food = ["Steak", "Sushi", "Pizza", "Tacos"]

# numbers = [
  # [1, 2, 3], 
  # [4, 5, 6],
  # [7, 8, 9]
# ]

# p numbers [1][1]    # to go into specific braket and choose a specfic number, should grab 5

# p numbers [2][0]

# practice
# teams = [
#   ["Alice", "Bob"],
#   ["Charlie", "David"],
#   ["Eve", "Frank"]
# ]

# teams.each_with_index do |team, index|
#   puts "Team #{index + 1}"
#   team.each do |member| 
#     p member
#   end
# end 

# Exercise
# movies = [
#   ["Action", ["Avengers", "Dark Knight"]],
#   ["Comedy", ["22 Jump Street", "Pineapple Express"]]
# ]

# movies.each do |movie|
#   movie.each_with_index do |movie, index|
#     p movies[index]
#   end
# end

# movies.each do |genre, titles|
#   puts "#{genre} Movies:"
#   titles.each do |title|
#     puts "- #{title}"
#   end 
# end


# Task:
# Create a shopping list program that allows the user to:
# Add items to the list.
# Remove items from the list.
# View the current list.
# Instructions:
# Create a file named shopping_list.rb.
# Program Requirements:
# Start with an empty array shopping_list = [].
# Display a menu with options:
# Add item
# Remove item
# View list
# Exit
# Use a loop to keep the program running until the user chooses to exit.
# Implement each option:
# Add Item: Prompt for the item name and add it to the array.
# Remove Item: Prompt for the item name and remove it from the array if it exists.
# View List: Display all items in the list.

# 
nested arrays

numbers = [
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]
]

p numbers [2][2]   # you are grabbing 9