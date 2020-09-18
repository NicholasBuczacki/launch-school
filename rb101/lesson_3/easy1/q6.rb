#Starting with the string:

#famous_words = "seven years ago..."
#show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

#1
famous_words.prepend('Four score and ')
puts famous_words

#reset
famous_words = "seven years ago..."

#2
famous_words =  'Four score and ' + famous_words
puts famous_words