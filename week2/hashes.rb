# hash

# {key => value, key => value}

# names = ["Alanna", "Noah", "Audreana"]

# Example for getting a key in hash
# person = {
#   "name" => "Alice",
#   "age" => 30,
#   "city" => "New York"
# }

# p person["city"]

# end of example

# Exercise:
# Task: Create a hash representing yourself with keys for "name", "age", and "hobby".
# Instructions:
# Create a file named hashes.rb.
# Define the hash and access each value.

# person = {
#   "name" => "Hello my name is Noah",
#   "age" => "I am 25 years old,",
#   "hobby" => "I like to play golf"
# }

# p person["name"]
# p person["age"]
# p person["hobby"]

# person = {
#   name: "Hello my name is Noah",
#   age: "25yo",
#   hobby: "I like to play golf"
# }

# p person[:name]
# p person[:hobby]
# p person[:age]

# END OF EXERCISE

# person = {
#   name: "Alice", 
#   age: 30,
#   city: "New York"
# }

# p person 
# person[:name] = "Noah"       # redeclare what person[:name] is
# person[:country] = "USA"      # add the key value pair of country: "USA"
# person[:phone_number] = 123   # add the key value pair of phone_number: 123
# person.delete(:city)          # delete key value pair where the key is :city
# p person

# p "Hi my name is #{person["name"]}. I am #{person["age"]} old."


#EXERCISE 2
# Task: Modify your person hash:
# Add a new key-value pair for :favorite_food.
# Update your :hobby.
# Remove the :age key.

# person = {
#   name: "Hello my name is Noah",
#   age: "25yo",
#   hobby: "I like to play golf"
# }

# p person
# person[:favorite_food] = "Sushi"
# person[:hobby] = "Basketball"
# person.delete(:age)
# p person

# exercise END

# person = {
#     name: "Alice", 
#     age: 30,
#     city: "New York"
#   }

# iterating over the hash
# person.each do |key, value|       #example:key=name value=alice
#   puts "key = #{key} and value = #{value}"
# end 


# person = {
#   name: "Hello my name is Noah",
#   age: "25yo",
#   hobby: "I like to play golf"
# }

# person.each do |key, value|
#   puts "key = #{key} and value =#{value}"
# end 

# library = [
#   { title: "1984",            author: "George Orwell", pages: 320},
#   { title: "Brave New World", author: "Aldous Huxley", pages 311},
#   { title: "Farenheit 451",   author: "Ray Bradbury", pages: 194}
# ]

# puts library[2][:pages]

 
#EXERCISE
# Task: Create a program that stores information about multiple people.
# Instructions:
# In your hashes.rb.
# Define an array of hashes, where each hash represents a person with keys for :name, :age, and :city.
# Iterate over the array to print out each person's information.

people = [
  {name: "Noah", age: 25, city: "AH"},
  {name: "Steve", age: 30, city: "dededo"},
  {name: "Lebron", age: 100, city: "LA"}
]

# puts people

people.each do |person|
  puts person[:name]
  puts person[:age]
  # puts person[:city]
end 

#EXERCISE END

# difference between hash and arrays

# hashes 
# - ideal when we need to associate values with keys
# eg. students info (name, age, grades)
#person = {
  #   name: "Alice", 
  #   age: 30,
  #   city: "New York"
  # }
  # person[:name]
  # person[:age]
  # person[:city]

# arrays
# -some sort of ordered list
# a list of all the students 

# numbers = [1, 2, 3, 4, 5]
# numbers[0]
# numbers[1]
# etc..



