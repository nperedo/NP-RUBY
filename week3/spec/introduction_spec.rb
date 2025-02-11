require_relative '../modules'

RSpec.describe Introduction do
  class Person
    include Introduction

    def initialize(name, age)
      @name = name
      @age = age
    end
  end

  subject { Person.new("Leon", 25) }

  describe '#introduce' do
    it 'return the correct introduction message' do
      expect(subject.introduce).to eq("Hello, my name is Leon")
    end
  end

  describe '#intro' do 
    it 'return the correct age message' do 
      expect(subject.intro).to eq("I am 25 years old")
    end 
  end 
end