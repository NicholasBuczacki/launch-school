#Stringy Strings
#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

#use 

def stringy(int)
  string = [1]
  i = 1
  
  while i < int
    if string[i-1] == 1
      string[i] = 0
    else
      string[i] = 1
    end
    i += 1 
  end
  
  string.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6) 
puts stringy(9) 
puts stringy(4) 
puts stringy(7) 