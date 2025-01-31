# syntax error 

# puts "Hello world"


# runtime exception

# begin: starts a block of code that might raise an exception
# rescue: catches specific exceptions and allows you to handle them.
# ensure: code that runs whether an exception occured or not. 

# def divide_numbers (a, b)
#   begin
#     result = a / b
#   rescue ZeroDivisionError
#     puts "Error: Cannot divide by zero."
#     result = nil
#   ensure 
#     puts "Division attempt completed."
#   end 
#   return result
# end 

# puts divide_numbers(10, 0)  # Outputs: Error message and nil
# puts divide_numbers(10 , 2) # Outputs: 5

# EXERCISE
# Task: Create a safe division method.
# Instructions:
# Create a file named error_handling.rb.
# Write a method that takes two numbers and divides them.
# Use begin and rescue to handle ZeroDivisionError.
# Use ensure to print a message indicating the operation is complete.

# def divide_numbers (a , b)
#   begin 
#     result = a / b
#   rescue TypeError
#     puts "Input integer"
#     result = "Error"
#   rescue ZeroDivisionError
#     puts "Cannot divide by 0"
#     results = "Error"
#   ensure 
#     puts "Division completed."
#   end 
#   return result
# end

# begin 
#   puts divide_numbers(21, 0)
#   puts divide_numbers(21 , 7)
#   puts divide_numbers(21 , "r")
#   puts divide_numbers(21 , noah)
# rescue NameError
#   puts "Error: There was an issue with the parameters you passed in."
# end 

#END EXERCISE


# class NegativeNumberError < StandardError #creating a custom class and calling it negativenumbererror. (negativenumbererror is inhereting standard error)
# end 

# def sqaure_root(number)
#   raise NegativeNumberError, "Cannot take sqaure root of negative number." if number < 0
#   Math.sqrt(number)
# end

# begin 
#   puts square_roots(9)  #Outputs: 3.0
#   puts square_roots(-4) # Raises NegativeNumberError
# rescue NegativeNumberError => e
# puts e.message
#   puts "Error: Negative number error"
# end

# EXERCISE

# Task: Create a custom exception for invalid input.
# Instructions:
# Define a custom exception class InvalidInputError.
# Write a method that raises this exception when the input is invalid.
# Use rescue to handle the custom exception.


# class InvalidInputError < StandardError
# end

# def square(num)
#   raise InvalidInputError, "Cannot square" if num < 0
#   result = num * num
#   return result
# end 

# begin
#   puts square(100)
#   puts square(2)
#   puts square(-350)
# rescue InvalidInputError
#   puts "Error: Input less than 0"
# end

#end exercise


# attempts = 0

# begin
#   attempts += 1
#   puts "Attempt: #{attempts}"
#   raise "An error occured." if attempts < 3
# rescue => e
#   puts e.message
#   retry if attempts < 3
# ensure 
#   puts "Operation completed."
# end 


# def ask_yes_or_no
#   attempts = 0

#   begin 
#     attempts += 1
#     print "Please enter Y or N (Attempt ##{attempts}):"
#     input = gets.chomp.strip.upcase

#     # Check if input is one of "Y" OR "N" using a standard array
#     raise "Invalid input. You must type 'Y' or 'N'." unless ["Y", "N"].include?(input)

#     puts "You entered: #{input}"
#     return input
    
#   rescue => e
#     puts e.message
#     if attempts < 3
#       retry
#     else
#       puts "Failed after 3 attempts."
#       return nil
#     end 
#   ensure 
#     puts "ask_yes_or_no operation completed."
#   end 
# end

# answer = ask_yes_or_no
# p "Final answer: #{answer}"


# EXERCISE

# Task: Implement retry in user input validation.
# Instructions:
# Copy and paste the following code and test out the retry functionality for yourself

# def get_number
#   attempts = 0
#   begin 
#     attempts += 1
#     print "Please enter a number: (Attempt #{attempts})"
#     input = gets.chomp
#     raise "That's not a valid number." unless input =~ /^\d+$/
#     input.to_i if attempts < 3
#   rescue => e
#     puts e.message
#     retry if attempts < 3
#   ensure 
#    puts "Operation completed."
#   end
# end

# number = get_number
# puts "You entered: #{number}"

# Task: Create a program that reads numbers from a user and calculates the average.
# Requirements:
# Create a file called calculator.rb
# Handle exceptions such as invalid input and division by zero.
# Use begin, rescue, ensure, and custom exceptions as appropriate.
# Use retry to prompt the user again after invalid input.

