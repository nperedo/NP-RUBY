#EXERCISE
# Task: Save an array of hashes to a file in JSON format.
# Instructions:
# Create a Ruby script named save_contacts.rb.
# Define an array of hashes representing contacts.
# Write the array to a file named contacts.json in JSON format.
# Ensure proper error handling

# require "json"

# contacts = [
#   { name: "Noah", phone: "671-1234", email: "noah@example.com" },
#   { name: "Jon", phone: "671-5678", email: "leon@example.com" }
# ]

# begin
#   file = File.open("data.json", "a")
#   file.write(JSON.pretty_generate(contacts))
#   puts "Data saved to data.json."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end

#END EXERCISE

# require 'json'

# begin
#   file = File.open("data.json", "r")
#   data = JSON.parse(file.read)
#   puts "Contacts loaded:"
#   data.each do |contact|
#     puts "Name: #{contact['name']}, Phone: #{contact['phone']}, Email: #{contact['email']}"
#   end
# rescue Errno::ENOENT
#   puts "File not found."
# rescue JSON::ParserError
#   puts "Error parsing JSON data."
# ensure
#   file.close if file
# end


# contacts = []

# loop do
#   puts "\nContact List Menu:"
#   puts "1. Add contact"
#   puts "2. Remove contact"
#   puts "3. View contacts"
#   puts "4. Exit"
#   puts "Enter your choice: "
#   choice = gets.chomp.to_i

#   case choice
#   when 1
#     puts "Enter contact name: "
#     name = gets.chomp
#     puts "Enter contact phone number: "
#     phone = gets.chomp
#     puts "Enter contact email: "
#     email = gets.chomp
#     contacts.push({ name: name, phone: phone, email: email })
#     puts "Contact added."
#   when 2
#     puts "Enter contact name to remove: "
#     name = gets.chomp
#     contact = contacts.find { |c| c[:name] == name }
#     if contact
#       contacts.delete(contact)
#       puts "Contact removed."
#     else
#       puts "Contact not found."
#     end
#   when 3
#     puts "Contact List:"
#     contacts.each_with_index do |contact, index|
#       puts "#{index + 1}. #{contact[:name]} - #{contact[:phone]} - #{contact[:email]}"
#     end
#   when 4
#     puts "Goodbye!"
#     break
#   else
#     puts "Invalid choice. Please try again."
#   end
# end