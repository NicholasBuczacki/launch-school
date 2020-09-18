#Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

#input is string
#output is boolean true or false depending on if string is all caps or not

#algo: compare string to upcased string and return true or false if equal or not

def uppercase?(string)
  string == string.upcase ? true : false
end

#Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

#actually didn't need if ternary