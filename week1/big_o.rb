# Big O Notation 

# O(1) - Constant time - not affected by the input size
# O(n) - Linear time - performance scales directly with the input size

# Examples 

def constant_time_example
  x = 10
  puts x
end

# constant_time_example

def linear_time_example(arr)
  arr.each do |item|
    puts item
  end
end

linear_time_example([1, 2, 3, 4, 5])