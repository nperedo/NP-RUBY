# class Person
#   # attr_accessor :name, :age   # another way so you don't have to put #{@name} and #{@age} in def intro

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def intro
#     "Hi my name is #{@name} and I'm #{@age} years old."
#     # "Hi my name is #{name} and I'm #{age} years old."
#   end 
# end 

# person = Person.new("ALanna", 23)
# puts person.intro 


#Exercise
# Task: Create a Book class with instance variables and methods.
# Instructions:
# Define a Book class with an initialize method.
# Set up instance variables @title, @author, and @pages.
# Define a method book_info that returns a string with the book's details.
# Instantiate a Book object and call book_info.

# class Book
#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end 

#   def book_info
#     "Book title: #{@title} by #{@author}. Pages: #{@pages}"
#   end 
# end 

# book = Book.new("Odyssey", "Homer", 256)
# puts book.book_info

#end exercise

# class Rectangle
#   attr_accessor :length, :width

#   def initialize(length, width)
#     @length = length
#     @width = width
#   end
  
#   def area
#     length * width
#   end 

#   def perimiter 
#     2 * (length + width)
#   end
# end 

# shape = Rectangle.new(5, 3)
# puts shape.length
# puts shape.width
# puts shape.area
# puts shape.perimiter


# Task: Add one more method to your book class and write RSpec tests for it
# Instructions:
# Add one more method of your choice to your book class.
# Test it to make sure it works
# Write RSpec tests for all methods you have in your book class (should be at least 3 in total)

class Book
    def initialize(title, author, pages)
      @title = title
      @author = author
      @pages = pages
    end 
  
    def book_title
      "#{@title}"
    end 

    def book_author
      "#{@author}"
    end 

    def book_pages
      "#{@pages}"
    end 
  end 
  
  book = Book.new("Odyssey", "Homer", 256)
  puts book.book_title
  puts book.book_author
  puts book.book_pages
  
