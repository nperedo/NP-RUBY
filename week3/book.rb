class Book
  attr_accessor :title, :author, :pages_read

  def initialize(title, author)
    @title = title
    @pages_read = 0
    @author = author
  end

  def read(pages)
    @pages_read += pages
    puts "You have read #{pages} pages of '#{title}'."
  end
end

books = []

loop do
  puts "\nBook Manager"
  puts "1. Add a new book"
  puts "2. List all books"
  puts "3. Read pages"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter the title of the book: "
    title = gets.chomp
    print "Enter the author of the book: "
    author = gets.chomp
    books << Book.new(title, author)
    puts "Book added!"
    p books
  when "2"
    puts "\nBooks in your collection:"
    books.each_with_index do |book, index|
      puts "#{index + 1}. #{book.title} by #{book.author} (Pages read: #{book.pages_read})"
    end
  when "3"
    if books.empty?
      puts "No books available. Please add a book first."
    else
      puts "\nSelect a book to read:"
      books.each_with_index do |book, index|
        puts "#{index + 1}. #{book.title}"
      end
      print "Enter the number of the book: "
      book_number = gets.chomp.to_i
      if book_number.between?(1, books.length)
        print "How many pages did you read? "
        pages = gets.chomp.to_i
        books[book_number - 1].read(pages)
      else
        puts "Invalid book number."
      end
    end
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end
end






