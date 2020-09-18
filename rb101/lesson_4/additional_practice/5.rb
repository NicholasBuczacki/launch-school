#In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#Find the index of the first name that starts with "Be"

#input array of words
#output the index of a specific word

#iterate through array searching for the word that starts with be, and return that index

flintstones.index { |name| name[0, 2] == "Be" }