# Activity:
# Task: Create a program that manages a list of employees, where each employee has:
# A name (string)
# A position (string)
# A list of skills (array)
# Contact information (hash with :email and :phone)
# Instructions:
# Create a file named employee_directory.rb.
# Define an array of employee hashes.
# Iterate over the array to display each employee's information.

employees = [
  {
    name: "Noah Peredo",
    position: "CEO",
    skills: ["golf", "coding", "cooking"],
    contact_info: { email: "noah.peredo@example.com", phone: "123-4567" }
  },
  {
    name: "Audreana Pangelinan",
    position: "CFO",
    skills: ["wrestling", "teaching", "coding"],
    contact_info: { email: "audreana.pangelinan@example.com", phone: "234-5678" }
  }
]

employees.each do |employee|
  puts "---------------------------------------------------"
  puts "Name: #{employee[:name]}"
  puts "Position: #{employee[:position]}"
  puts "\n"
  puts "Skills:"
  employee[:skills].each do |skill|
    puts "#{skill.capitalize}"
  end
  puts "\n"
  puts "Contact Info:"
  puts "Email: #{employee[:contact_info][:email]}"
  puts "Phone Number: #{employee[:contact_info][:phone]}"
  puts "---------------------------------------------------"
end