# require_relative '../inheritance'

# RSpec.describe Person do
#   describe '#initialize' do
#     it 'create a new Person with a name and age' do
#       person = Person.new("Alanna", 23)
#       expect(person.name).to eq("Alanna")
#       expect(person.age).to eq(23)
#     end
#   end
# end

# another way to do it:
    
# RSpec.describe Person do
#   let(:person) { Person.new("Noah", 25) }

#   it "has a name" do 
#     expect(person.name).to eq ("Noah")
#   end 

#   it "has an age" do 
#     exoect(person.age).to eq(25)
#   end 
# end
