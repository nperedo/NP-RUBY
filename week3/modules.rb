# modules

# namespacing
# prevent name collisions by organizing code into separate spaces

# mixins
# add shared functinality to classes without using inheritance 

# examples of a module:

# module MathConstants
#   PI = 3.14159
#   E  = 2.71828
# end

# puts MathConstants::PI

# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF."
#     end
#   end
# end

# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network."
#     end
#   end
# end

# pdf_printer = PDFTools::Printer.new
# network_printer = NetworkTools::Printer.new

# pdf_printer.print_file("document.txt")
# network_printer.print_file("document.txt")


#EXERCISE:
# Task: Create modules to namespace classes.
# Instructions:
# Create a new Ruby file named modules.rb.
# Define two modules: Animals::Mammals and Animals::Birds.
# In each module, create a class named Animal with a method speak.
# Instantiate objects from each class and call speak.

# module Mammals
#   class Animals
#     def speak
#       puts "b ima dog ruuuff err"
#     end
#   end 
# end

# module Birds
#   class Animals
#     def speak 
#       puts "chirp"
#     end 
#   end
# end

# mammal = Mammals::Animals.new
# mammal.speak
# bird = Birds::Animals.new
# bird.speak

#END exercise

#----------------------
# module Greetable
#   def greet 
#     "Hello"
#   end
# end 


# class Person 
#   include Greetable 
# end

# person = Person.new
# puts person.greet

#------------------------

# module Loggable
#   def log(message)
#     puts "Log: #{Time.now} - #{message}"
#   end 
# end 

# class Person
#   include Loggable

#   def initialize(name)
#     @name = name
#     log("New Person created with - #{@name}")
#   end 
# end 

# class Student < Person
#   def initialize(name)
#     super(name)
#     log("Testing in the Student class - #{self.class}")
#   end 
# end 

# person = Person.new("Noah")
# student = Student.new("Leon")


#Exercise
# Task
# Create a mixin (module) that you can include in multiple classes to share a common method.
# Instructions
# Define a module called Driveable.
# Inside Driveable, define a method drive that returns or prints a message like "Driving the <class name>!".
# Create two classes, Car and Motorcycle, in the same file.
# In each class, include the Driveable module.
# Instantiate objects from both Car and Motorcycle and call the drive method on each.
# Print or return the result so you can see that both classes share the same functionality.

# module Driveable
#   def drive(message)
#     puts "Stroll patrol with the #{self.class}!"
#     # puts "Stroll patrol with the #{message}!"
#   end 
# end 

# class Car
#   include Driveable 
# end 

# class Motorcycle
#   include Driveable
# end

# car = Car.new
# motorcyle = Motorcycle.new

# car.drive("Jeep")
# motorcyle.drive("Harley")

#END EXERCISE


#---- as a class exercise------
# module Walkable
#   def walk(message)
#     puts "On a walk with #{message}"
#   end
# end

# class Person
#   include Walkable

# #   def initialize(name)
# #     @name = name
# #     walk("#{@name}")
# #   end
# end

# class Dog
#   include Walkable

#   # def initialize(name)
#   #   @name = name
#   #   walk("#{@name}")
#   # end
# end

# person = Person.new
# person.walk("Snoop Dog")
# dog = Dog.new
# dog.walk("Dog")
#----------------------------

#exercise:
# Task: Create a module with multiple methods and include it in a class.
# Instructions:
# Define a module MathOperations with methods add, subtract, multiply, divide.
# Create a class Calculator.
# Include MathOperations in Calculator.
# Instantiate Calculator and perform calculations

# module MathOperations
#   def add(a, b)
#     puts "The sum of #{a} + #{b} = #{a + b}"
#   end 
#   def subtract(a, b)
#     puts "The difference of #{a} - #{b} = #{a - b}"
#   end 
#   def multiply(a, b)
#     puts "The product of #{a} * #{b} = #{a * b}"
#   end 
#   def divide (a, b)
#     puts "The quotient of #{a} / #{b} = #{a / b} "
#   end 
# end 

# class Calculator
#   include MathOperations
# end 

# calculator = Calculator.new
# calculator.add(1, 2)
# calculator.subtract(10, 5)
# calculator.multiply(2, 4)
# calculator.divide(20, 10)
#END EXERCISE



# How to call a module method directly:
# module MathOperations
#   def self.add(a, b)
#     a + b
#   end
# end

# puts MathOperations.add(1, 2)  # => 3

# # OR 

# module MathOperations
#   # `module_function` makes the following instance methods available
#   # as *module methods* (so you can call MathOperations.add).
#   module_function 

#   def add(a, b)
#     a + b
#   end
# end

# # Now you can call:
# puts MathOperations.add(1, 2)  # => 3



# use inheritance for an is-a relationship
# use mixina for shared behavior



module Introduction
  def introduce
    "Hello, my name is #{@name}"
  end 
  def intro
    "I am #{age} years old"
  end 
end 

class Person
  include Introduction  # include could be only in this class because class Student and class Teacher is inheriting from class Person
  attr_accessor :name, :age

  def initialize(name, age)
    raise ArgumentError, 'Age must be a positive number' if age < 0
    @name = name
    @age = age
  end

  # def introduce
  #   "Hi, my name is #{@name} and I am #{@age} years old."
  # end
end

class Student < Person
  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end

  # def introduce
  #   super + " I'm in grade #{@grade} and I go to #{@school}."
  # end
end

class Teacher < Person
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end

  # def introduce
  #   "#{super} I teach #{@subject}. And I've been teaching for #{@years_of_experience} years."
  # end
end

# person = Person.new("Jess", -1)
# puts person.name
# puts person.age

student = Student.new("Leon", 25, "12", "FD")
puts student.introduce

teacher = Teacher.new("Charles", 26, "Computer Science", 50)
puts teacher.introduce








