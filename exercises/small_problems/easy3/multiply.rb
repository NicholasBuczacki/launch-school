#Multiplying Two Numbers
#Create a method that takes two arguments, multiplies them together, and returns the result.

#Example:

#multiply(5, 3) == 15

def multiply(x,y)
  x * y
end

puts "Hello, please enter the first number to be multiplied."
one = gets.chomp.to_i

puts "Hello, please enter the second number to be multiplied."
two = gets.chomp.to_i

puts "#{one} times #{two} is #{multiply(one,two)}."
