#Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
#If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

#input is a string
#output is the same string but with non letters replaced by spaces

#replace non-letters with spaces
#replace multiple spaces with single spaces

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

#Examples:

p cleanup("---what's my +*& line?") == ' what s my line '