#Palindromic Numbers
#Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

#Examples:

def palindromic_number?(integer)
  integer.to_s.reverse == integer.to_s ? true : false
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true