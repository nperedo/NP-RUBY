# Mocking:
  # Simulating the behavior of real objects in controlled ways.
  # Useful for isolating the code under test.
# Stubbing:
  # Providing predefined responses to method calls during a test.
  # Helps test methods that depend on external services or complex logic.

  # class Student 
  #   attr_accessor :name, :grades

  #   def initialize(name)
  #     @name = name
  #     @grades = []
  #   end 

  #   def average_grade
  #     return 0 if grades.empty?
  #     total = grades.reduce(:+)     # sum up all items in the array
  #     return total / grades.size    #getting legnth of the array
  #   end 
  # end 

  # student = Student.new("Damen")
  # # puts student.name
  # student.grades = [100, 90, 80]
  # # p student.grades
  # p student.average_grade


# EXERCISE
#   Task: Write tests for a Library class using mocks and stubs.
# Instructions:
# Create a Library class with a method fetch_books_from_api that simulates fetching book data from an external API.
# Use stubbing to simulate the API response in your tests.

#my exercise:
# class Library
#   attr_accessor :library, :book

#   def initialize(library)
#     @library = library
#     @book = []
#   end

#   def fetch_books_from_api(books)
#     if @book.include?(books)
#       return "Book found."
#     else 
#       return "Book not found"
#     end 
#   end
# end

# library = Library.new
# puts library.fetch_books_from_api

#leon's exercise
# class Library
#   def fetch_books_from_api
#     # Simulate a call to an external API
#     sleep(2) # Simulates network delay
#     return ["Book 1", "Book 2", "Book 3"]
#   end

#   def books
#     @books ||= fetch_books_from_api
#   end

#   # def books
#   #   if @books.nil?
#   #     @books = fetch_books_from_api
#   #   end
#   #   @books
#   # end  
# end
