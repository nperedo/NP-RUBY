
 # puts "What is the length of rectangle"
# l = gets.chomp.to_i 

# puts "What is the width of rectangle"
# w = gets.chomp.to_i

# puts "Area of rectangle is #{l * w}"

# puts "Please give a number"
# input = gets.chomp
# number = input.to_i
# if input.to_i.to_s == input 
  # if number.even?
    # puts "#{number} is even."
# else 
 # puts "#{number} is odd."
# end
# else 
  # puts "Sorry, please provide an integer."
# end

# simple calculator
# ask user for 2 numbers
# ask for an operation (add subtract multiply or divide)
# perform that operation and print the result 

puts "Enter your first number"
first_num = gets.chomp.to_i
# puts first_num

puts "Enter your second number"
second_num = gets.chomp.to_i
# puts second_num

puts "Choose an operation (add, subtract, multiply, or divide)"
operation = gets.chomp
# puts operation 

if operation.downcase == "add"
  puts first_num + second_num
elsif operation.downcase == "subtract"
  puts first_num - second_num
elsif operation.downcase == "multiply"
  puts first_num * second_num
elsif operation.downcase == "divide"
  puts first_num / second_num
else 
  puts "Not a valid operation"
end
