# string
# name = "Noah"
# puts name
# puts name.class

#Integer
# number = 21
# puts number
# puts number.class

# Float
# decimal = 4.7
# puts decimal 
# puts decimal.class

# Boolean
# boolean = true
# puts boolean
# puts boolean.class

# Sentence
# puts "Hafa Adai my name is #{name}"

# module - % - gives you the remainder of a division operation 
# remainder = 20 % 3 
# puts remainder 

# if number % 2 == 0
#  puts "Even number" 
# else
  # puts "Odd number"
# end 

#gets.chomp
# name = gets
#sentence = '
# puts sentence'

puts "Please give a number"
input = gets.chomp
number = input.to_i
if input.to_i.to_s == input 
  if number.even?
     puts "#{number} is even."
else 
  puts "#{number} is odd."
end
else 
  puts "Sorry, please provide an integer."
end

