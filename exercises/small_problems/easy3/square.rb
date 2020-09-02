#Squaring an Argument
#Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

#Example:

#square(5) == 25
#square(-8) == 64

def multiply(x,y)
  x * y
end

def square(a,b)
  multiply(a,b)
end

puts "Hello, please enter the number to be squared."
one = gets.chomp.to_i

two = one

puts "#{one} to the #{two} power is #{square(one,two)}."
