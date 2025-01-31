# Exercise: Membership ID Checker
# Goal: Validate a user’s membership ID against a known list of valid IDs, using Ruby’s error-handling features.
# Scenario
# Imagine you have a small club or service with a few valid membership IDs. A user must enter a valid ID to proceed. If they fail multiple times, the program refuses access.
# Requirements:
# Create a file named membership_checker.rb.
# Define a custom exception class, e.g. InvalidMembershipError.
# Store valid IDs in an array (e.g., ["AB123", "CD456", "EF789"]).
# Prompt the user for their membership ID.
# Raise an InvalidMembershipError if the entered ID is not in the valid list.
# Rescue this error, retry up to 3 attempts, then exit if still invalid.
# Use ensure to print a final message (e.g., "ID check finished."), regardless of success or failure.

class InvalidMembershipError < StandardError
end
def check_membership
  valid_ids = ["AB123", "CD456", "EF789"]
  attempts = 0
  begin
    attempts += 1
    puts "Enter your membership ID: "
    user_id = gets.chomp.capitalize
    raise InvalidMembershipError, "That ID is not recognized." unless ["AB123", "CD456", "EF789"].include?(input)
    puts "Welcome! Access granted."
    # If this line is reached, no error was raised
  rescue InvalidMembershipError => e
    puts e.message  # e.message is "That ID is not recognized."
    if attempts < 3
      puts "Please try again..."
      retry  # restarts the 'BEGIN' block
    else
      puts "Too many failed attempts. Access denied."
    end
  ensure
    puts "ID check finished."
  end
end
# Main program flow
# puts check_membership
begin
  puts check_membership
rescue NameError
  puts "Error"
end
#Reference Only
begin
  puts divide_numbers(a, 0)
rescue NameError
  puts "Error: Both variables have to be an integer."
end