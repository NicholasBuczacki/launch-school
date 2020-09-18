#In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

#Write a method that takes a positive integer or zero, and converts it to a string representation.

#You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the 
# by analyzing and manipulating the number.

#input integer
#output string

#iterate through integer's values, transferring them to string

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end