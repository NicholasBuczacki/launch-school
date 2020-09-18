#Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

#input is a string
#output is a string with only consonants doubled

#algo: create constant with lower case letters, same algo as before, but only add the character twice if it is in the constant

CONSONANTS = %w( b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  output = ''
  string.each_char{|char| CONSONANTS.include?(char.downcase) ? output << char << char : output << char}
  output
end

#need to downcase char in the include argument, need to include y as a consonant

#Examples:

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""