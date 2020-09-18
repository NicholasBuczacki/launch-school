#Write a method that returns the next to last word in the String passed to it as an argument.

#Words are any sequence of non-blank characters.

#You may assume that the input String will always contain at least two words.

#input is a string
#output is second to last word from that string

#algo: take argument, split argument, array element select element at -2

def penultimate(string)
  words = string.split
  words[-2]
end

#ls solution was identical
#i wanted to element select without defining a variable for the array but apparently you can't do that

#Examples:

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'