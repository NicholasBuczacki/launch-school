#Write a method that takes a string, and returns a new string in which every character is doubled.

#input is a string
#output is the string with all characters including whitespace doubled

#algo: create empty array, iterate through string with each_char, adding each character to the array twice

def repeater(string)
  doubled_string = []
  string.each_char{|char| doubled_string << char << char}
  doubled_string.join
end

#Examples:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''