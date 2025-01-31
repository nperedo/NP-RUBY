# Task: Build a program that allows users to:
# Add new items to a catalog.
# Each item should have a name, category, price, and tags.
# Display all items in the catalog.
# Instructions:
# Create a file named catalog.rb.
# Use arrays and hashes to store item data.
# Implement a simple menu to interact with the catalog.

catalog = []
#method to show menu
def display_menu #works
  puts "\n"
  puts "CATALOG:"
  puts "1. Add a new item"
  puts "2. View all items"
  puts "3. Exit"
  puts "Enter a number to choose an option"
end
#method to add item to catalog
def add_item(catalog)
  puts "Enter item name:"
  name = gets.chomp
  puts "Enter item category:"
  category = gets.chomp
  puts "Enter item price:"
  price = gets.chomp.to_f
  puts "Enter item tags using commas (ex: a, b, c):"
  tags = gets.chomp.split(',')
catalog << { name: name, category: category, price: price, tags: tags }
puts "Item #{name} has been added to catalog."
end
def display_items(catalog)
  catalog.each_with_index do |item, index|
  puts "\n"
  puts "Item: #{index + 1}"
  puts "Name: #{item[:name]}"
  puts "Category: #{item[:category]}"
  puts "Price: $#{item[:price]}"
  puts "Tags: #{item[:tags].join(', ')}"
  puts "\n"
  end
end
loop do
  display_menu
  choice = gets.chomp.to_i
  case choice
  when 1
    add_item(catalog)
  when 2
    display_items(catalog)
  when 3
    puts "Exiting Catalog now."
    break
  else
    puts "Not a valid choice, please try again."
  end
end



