# file i/o
# file input 
# file out



# reading a specific file:

# begin
#   file = File.open("example.txt", "r")
#   contents = file.read
#   puts contents
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end


# write to a specific file
# begin
#   file = File.open("example.txt", "w")
#   file.puts "Hello, world!"
#   file.puts "This is a new line."
#   puts "Data written to example.txt."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end


# EXERCISE

#   Task: Write user input to a file.
# Instructions:
# Create a Ruby script named file_io.rb.
# Prompt the user for their name and a message.
# Write this information to a file named user_messages.txt.
# Ensure proper error handling and closing of the file.

# begin
#   file = File.open("example.txt", "w")
#   puts "Enter name:"
#   file.puts "Enter name:"
#   file.puts name = gets.chomp
#   puts "Enter a message:"
#   file.puts "Enter a message:"
#   file.puts message = gets.chomp
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end

#END EXERCISE

# "a" = append to the end of the file
# puts "Enter name: "
# name = gets.chomp
# puts "Enter a message: "
# message = gets.chomp

# begin 
#   file = File.open("example.txt", "a")
#   file.puts "\n #{name}: #{message}"
#   puts "Your message has been saved."
# rescue IOError => e
#   puts "An error occured: #{e.message}"
# ensure
#   file.close if file
# end

# # reading lines
# begin
#   file = File.open("example.txt", "r")
#   file.each_line do |line|
#     puts "Read line: #{line.chomp}"
#   end
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file 
# end

# EXERCISE
# Task: Count the number of lines in a file.
# Instructions:
# Create a file named data.txt with several lines of text.
# Read the file and count the number of lines.
# Display the total line count.
# Include error handling for file not found.


# begin
#   file = File.open("data.txt", "r")
#   file.each_line do |line|
#     puts "Read line: #{line.chomp}"
#   end
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file 
# end

# line_count = 0

# begin 
#   file = File.open("data.txt", "r")
#   file.each_line do |_line|
#     line_count += 1
#   end
#   puts "Total lines: #{line_count}"
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end

#end exercise

# example of reading and writing
# begin
#   # Open an existing file for reading and writing.
#   # The file pointer starts at the beginning of the file.
#   file = File.open("example.txt", "r+")

#   puts "Original file content:"
#   # Read the file's entire content (the pointer moves to the end).
#   puts file.read

#   # Move the file pointer back to the start, so we can overwrite.
#   file.rewind

#   # Overwrite content with new text.
#   file.puts "This is new content overwriting the old!"

#   puts "File content has been overwritten."
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end



# read and append 
# begin
#   # "a+" opens the file for reading AND appending.
#   # If the file doesn't exist, it creates one.
#   file = File.open("example.txt", "a+")

#   # Go back to the start of the file to read what's currently there
#   file.rewind
#   puts "Current file content:"
#   puts file.read

#   # Append new data at the end
#   file.puts "Appending new data at #{Time.now}"

#   # Confirm changes by reading again
#   file.rewind
#   puts "\nUpdated file content:"
#   puts file.read
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end



# require 'json'

# data = {
#   name: "Alice",
#   age: 30,
#   hobbies: ["reading", "hiking", "coding"]
# }

# begin
#   file = File.open("data.json", "w")
#   file.write(JSON.pretty_generate(data))
#   puts "Data saved to data.json."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end
