# Create a simple command-line address book application.
# Instructions:
# Create a file named address_book.rb.
# Program Requirements:
# The program should display a menu with options:
# Add a contact
# View all contacts
# Search for a contact
# Exit
# Add a Contact:
# Prompt the user for the contact's name, phone number, and email.
# Store each contact as a hash within an array.
# View All Contacts:
# Display all contacts with their details.
# Search for a Contact:
# Prompt for the name to search.
# Display the contact's information if found.


def add_contact(contacts)
  puts "\n[Add a contact]"
  puts "Input name"
  name = gets.chomp
  contacts = { name: name, number: contacts, email: contacts}
  contacts[:name] = name 
  puts "You added #{name} to your list! #{name}"
  puts "Input number"
  number = gets.chomp
  contacts[:number] = number
  puts "You added #{number} to your list!"
  puts "Input email"
  email = gets.chomp
  contacts[:email] = email
  puts "You added #{email} to your list! "
  return contacts
end

def view_contact(contacts)
    puts "Contacts"
    contacts.each do |person, contacts|
      end
end

def search_contact(contacts)
  puts "Search name:"
  search_name = gets.chomp
  found = contacts.find { |contact| contact[:name].downcase == search_name.downcase }
end


address_book = []

# p add_contact(address_book)



loop do
  puts "________________________________"
  puts "\nAddress Book:"
  puts "Chose a number"
  puts "1 Add Contact"
  puts "2 View Contacts"
  puts "3 Search for a contact"
  puts "4 Exit"
  puts "_________________________________"
  choice = gets.chomp.to_i 

  if choice == 1
    puts add_contact(address_book)
  elsif choice == 2
    puts view_contact(address_book)
  elsif choice == 3
    puts search_contact(address_book)
  elsif choice == 4
    puts "bye"
    break
  end 
end 