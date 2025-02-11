# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def introduce
#     "Hi, my name is #{@name} and I am #{@age} years old."
#   end
# end

# class Student < Person
#   def initialize(name, age, grade, school)
#     super(name, age)
#     @grade = grade
#     @school = school
#   end

#   def introduce
#     super + " I'm in grade #{@grade} and I go to #{@school}."
#   end
# end

# class Teacher < Person
#   def initialize(name, age, subject, years_of_experience)
#     super(name, age)
#     @subject = subject
#     @years_of_experience = years_of_experience
#   end

#   def introduce
#     "#{super} I teach #{@subject}. And I've been teaching for #{@years_of_experience} years."
#   end
# end

# student = Student.new("Leon", 25, "12", "FD")
# puts student.introduce

# teacher = Teacher.new("Charles", 26, "Computer Science", 50)
# puts teacher.introduce