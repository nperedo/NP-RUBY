# Object Oriented Programming

# encapsulation
# bundle data and methods that operate on that data within one class

# abstraction
# hide complex implementation/logic details and only show what is necessary

# name = "Leon"
# puts name.class 
# number = 10
# puts number.class

# class Car 
#   # methods and logic
# end

# my_car = Car.new
# puts my_car.class

# EXERCISE
# Task: Create a new Ruby file called person.rb and define an empty Person class.
# Instructions:
# Open VSCode and create a new file named oop.rb.
# Define an empty Person class.
# Create an instance of Person and assign it to a variable.
# Print the class of the instance using puts.

# class Person
# end

# personx = Person.new
# puts personx.class

# END EXERCISE

# class Person
#   def set_name(name)
#     @name = name    # @
#   end 

#   def get_name
#     @name
#   end
# end

# personx = Person.new
# personx.set_name("Noah")
# puts personx.get_name 


#Exercise
# Task: Extend the Person class to include an age attribute.
# Instructions:
# Add methods set_age and get_age.
# Use @age as the instance variable for age.
# Create an instance of Person, set the name and age, and print them.

# class Person
#   def set_name(name)
#     @name = name    # @
#   end 
  
#   def get_name
#      @name
#   end

#   def set_age(age)
#     @age = age
#   end

#   def get_age
#     @age
#   end
# end

# personx = Person.new 
# personx.set_name("Noah")
# personx.set_age(25)
# puts "My name is #{personx.get_name} and I am #{personx.get_age}"
#End exercise
  

# attr_reader :name creates a getter method for @name.
# attr_write :name creates a setter method for @name.
# attr_accessor :name creates both getter and setter methods.

# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# personx= Person.new("Noah", 25)
# puts personx.name
# puts personx.age

# class Book
#   attr_accessor :title, :author, :pages_read

#   def initialize(title, author)
#     @title = title
#     @author = author
#     @pages_read = 0
#   end

#   def read(pages)
#     @pages_read += pages
#     puts "You have read #{pages} pages."
#   end
# end

# book = Book.new("Harry Potter", "JK Rowling")
# puts book.title
# puts book.author
# book.read(30)
# puts "Total number of pages read: #{book.pages_read}"

# Exercise
# Task: Choose a real-world object to model (e.g., Book, Student, Animal) and create a class.
# Instructions:
# Define a class with an initialize method.
# Use attr_accessor for attributes.
# Add at least one method that performs an action.

# class NBA
#   attr_accessor :team, :player, :career_points

#   def initialize(team, player)
#     @team = team
#     @player = player
#     @career_points = 0
#   end 

#   def total(points)
#     @career_points += points
#     puts "#{player} has #{points} career points."
#   end 
# end 

# basketball = NBA.new("Lakers", "Luka Doncic")
# puts basketball.team
# puts basketball.player
# basketball.total(12089)
# puts "Career points: #{basketball.career_points}"
#end exercise

# ask: Enhance your class by building an interactive program that allows users to create and interact with objects.
# Instructions:
# Update your class to include user interaction.
# Use gets.chomp to get input from the user.
# Provide a menu for the user to choose actions.
# Store multiple objects in an array or hash.


class Nba
  attr_accessor :team, :player, :career_points
  
    def initialize(team, player)
      @team = team
      @player = player
      @career_points = 0
    end 
  
    def total(points)
      @career_points += points
      puts "#{player} has #{points} career points."
    end 
  end 

teams = []

loop do
  puts "\nNBA Manager"
  puts "1. Add a team"
  puts "2. List all players"
  puts "3. Career points"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter the NBA team: "
    team = gets.chomp
    print "Enter the player in the team: "
    player = gets.chomp
    teams << Nba.new(team, player)
    puts "NBA player added"
  when "2"
    puts "\nTeams in your collection:"
    teams.each_with_index do |team, index|
      puts "#{index + 1}. #{team.team} player #{team.player}."
    end
  when "3"
    if teams.empty?
      puts "Team unavailable. Please add a team first."
    else
      puts "\nSelect a team to enter player's career points"
      career_points = gets.chomp
      teams.each_with_index do |team, index|
        puts "#{index + 1}. #{team.career_points}"
      end
      print "Enter the number of career points: "
      career_points = gets.chomp.to_i
      teams.push
    end
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end