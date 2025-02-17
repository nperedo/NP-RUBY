require_relative '../tdd'

RSpec.describe Calculator do
  describe '#add' do
    it 'adds two numbers and gets the sum' do
      calculator = Calculator.new
      expect(calculator.add(3, 2)).to eq(5)
    end
  end

  describe '#subtract' do 
    it 'subtracts two numbers and gets difference' do 
      calculator = Calculator.new
      expect(calculator.subtract(3, 2)).to eq(1)
    end 
  end 
  
  describe '#mutiply' do 
    it 'mutiplies two numbers and gets product' do 
      calculator = Calculator.new
      expect(calculator.mutiply(3, 2)).to eq(6)
    end 
  end 

  describe '#divide' do 
    it 'divides two numbers and gets quotient' do 
      calculator = Calculator.new
      expect(calculator.divide(4, 2)).to eq(2)
    end 
  end 
end