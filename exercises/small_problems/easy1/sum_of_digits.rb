#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(int)
  accumulator = 0
  
  while int >= 1
    accumulator += int % 10
    int = int / 10
  end
  
  accumulator
  
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts sum(23) 
puts sum(496) 
puts sum(123_456_789) 