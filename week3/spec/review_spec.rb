require_relative '../review'

RSpec.describe Book do
  let(:book) { Book.new("Odyssey", "Homer", 256) }

  describe '#book_title' do 
    it 'names the book title' do 
      # book = Book.new("Odyssey", "Homer", 256)
      expect(book.book_title).to eq("Odyssey")
    end 
  end 
  describe '#book_author' do
    it 'names the books author' do
      # book = Book.new("Odyssey", "Homer", 256)
      expect(book.book_author).to eq("Homer")
    end 
  end 
  describe 'book_pages' do 
    it 'amount of pages in the book' do 
      # book = Book.new("Odyssey", "Homer", 256)
      expect(book.book_pages).to eq("256")
    end 
  end 
end 

include 

# require_relative '../review'

# RSpec.describe Rectangle do 
#   describe '#initialize' do
#     it 'initializes with the given length and width' do
#       shape = Rectangle.new(5, 10)
#       expect(shape.length).to eq(5)
#       expect(shape.width).to eq(10)
#     end 
#   end 
  
#   describe '#area' do 
#     it 'multiplies length and width' do 
#       shape = Rectangle.new(5, 10)
#       expect(shape.area).to eq(50)
#     end 
#   end 
# end