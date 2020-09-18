#Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

puts "Please enter a string so I can count its non-whitespace characters."
string = gets.chomp
charray = string.split('')
charray.delete(' ')
puts "There are: #{charray.count} characters in: #{string}"
