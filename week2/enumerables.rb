# numbers = [1, 2, 3, 4, 5]

# #enumerable and iterator

# each
# numbers.each do |number|
#   puts number               # <---both are the same result----> # numbers.each { |number| puts number }
# end

# person = {
#   "name=" => "Alice",
#   ""
# }


# map 
# number = [1, 2, 3, 4, 5]

# squared = numbers.map do |number|
#   number * number                     <----both are the same result---->  squared = numbers.map { |number| number * number }
# end

# puts "Original numbers: #{numbers.inspect}"   #inspect = don't need it but to make it look nice
# puts "Squared numbers: #{squared.inspect}"    

#EXERCISE
# Use map to capitalize a list of names.
# Instructions:
# Create a file named enumerables.rb.
# Define an array of names in lowercase letters.
# Use map to create a new array with each name capitalized.
# Print the new array.

# names = ["noah", "damen", "leon", "alanna", "audreana"]

# capitalize = names.map do |name|
#   name.capitalize   # .capitalize = first letter
#   # name.upcase     # .upcase = full word
#   # name.split.map{|w|w<<w.slice!(-1).chr.upcase}.join' '   #Capitalize last letter in word 
#   # name.split.map(&:capitalize).join(" ")    #Capitalize every word in a sentence
# end 

# puts "OG name #{names}"
# puts "Upper names #{capitalize}"
#END EXERCISE


# select  = chooses whatever logic is true
# numbers = [1, 2, 3, 4, 5]

# test = numbers.select do |number|     #SELECT
#   number.even?                      #<---both are same result--->    # test = numbers.select { |number| number.even? }
# end

# p test

# #  reject
# odd_numbers = numbers.reject do |number|    #REJECT
#   number.even?
# end

# p odd_numbers

# Task: Filter a list of words to find those longer than 4 letters.
# Instructions:
# Define an array of words.
# Use select to create a new array with words longer than 4 letters.
# Print the new array.

# words = ["can", "bottle", "glass", "laptop"]

# long_words = words.select do |object|
#   object.length > 4
# end

# long_words = words.reject do |object|
#   object.length > 4
# end

# p words
# p long_words

# additonal Exercise: get consonant

# letters = ["a", "b", "c", "d", "e", "i", "o", "u"]

# consonants = letters.reject do |con|
#   ["a", "e", "i", "o", "u"].include?(con)
# end

# p consonants

#end exercise

# reduce
# numbers = [1, 2, 3, 4, 5]

# sum = numbers.reduce do |total, number|
#   total + number
# end

# puts "the sum is #{sum}"

# EXERCISE
# Instructions:
# Define an array of numbers.
# Use reduce to calculate the product of all numbers.
# Print the result.
# numbers = [5, 1, 2, 3, 4]

# sum = numbers.reduce do |total, number|
#   total * number
# end

# puts "the prouct is #{sum}"
#END OF EXERCISE

# sort 
names = ["charles", "alanna", "Damen"]
numbers = [5, 10, 2, 3]

sorted_names = names.sort   # sort goes in alph. order (however capitalized words come first)
# sorted_names = names.sort_by { |name| name.downcase}  # way to sort (up/down case) in order
p sorted_names

descending_numbers = numbers.sort do |a, b|
  b <=> a     # switching 10 and 5 in numbers array above
end

p descending_numbers