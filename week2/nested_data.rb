# nested arrays 
# Representing a 3x3 grid
# grid = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# p grid[1][2]

# Exercise
# tic tac toe
# board = [
#   ['', '', ''], 
#   ['', '', ''],
#   ['', '', '']
# ]

# board[0][0] = 'X'
# board[1][1] = 'O'
# board[0][2] = 'X'
# p board


# grid = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# grid.each do |index|
#   puts index
# end

# grid.each do |a, b, c|
#   p a 
#   p be
#   p c
# end 

# grid.each do |number|
#   number.each do |num|
#     p num 
#   end 
# end 



# nested hashes

# Representing a person with nested details
# person = {
#   name: "Alice",
#   contact: {
#     email: "alice@example.com",
#     phone: "123"
#   },
#   address: {
#     street: "123 Main St",
#     city: "Wonderland",
#     zip: "123456"
#   }
# }

# p person[:contact][:email]
# p person[:address]

# Task: Create a hash representing a student with nested information.
# Instructions:
# Create a file named nested_data.rb.
# Include keys for :name, :grades (hash of subjects and scores), and :contact (hash with :email and :phone).
# Access and print specific nested values.

# student = {
#   name: "Jon",
#   grades: {
#     Math: "A",
#     PE: "A",
#     English: "B",
#   },
#   contact: {
#     email: "jon@gmail.com",
#     phone: "671-123-3453"
#   }
# }

# # p student
# # p student[:grades]

# student[:grades].each do |subject, score|
#   puts subject, score
#   # puts "#{subject.capitalize}: #{score}"    # to make look nice :)
# end

# EXERCISE

# Task: Write a program that iterates over a hash of multiple students, each with their own nested hashes.
# Instructions:
# Define a hash where each key is a student's name, and the value is a hash of their grades.
# Iterate over each student to display their grades.

# student = {
#   Noah: { math: 100, science: 100, PE: 100},
#   Leon: {math: 59, science: 69, PE: 42},
#   Beyonce: { math: 88, sceince: 92, PE: 85}
# }

# student.each do |name, grade|
#   puts "#{name}: "
#   grade.each do |subject, score|
#     puts "#{subject}: #{score}"
#   end 
# end 

#END OF EXERCISE

# student = {
#   Noah: { math: 100, science: 100, PE: 100},
#   Leon: {math: 59, science: 69, PE: 42},
#   Beyonce: { math: 88, science: 92, PE: 85}
# }

# puts student
# student[:Leon][:science] = 98  #modifying the value
# student[:Beyonce].delete(:science)  # deleting beyonce" science grade
# student[:Noah][:history] = 100 
# puts student

# An array of hashes representing products
products = [
  { name: "Laptop", price: 1000, tags: ["electronics", "computers"] },
  { name: "Book", price: 20, tags: ["education", "literature"] },
  { name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"] }
]

p products[2][:tags][0]
