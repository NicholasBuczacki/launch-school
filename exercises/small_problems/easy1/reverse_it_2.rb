#Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. 
#Spaces should be included only when more than one word is present.

#Examples:

#puts reverse_words('Professional')          # => lanoisseforP
#puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
#puts reverse_words('Launch School')         # => hcnuaL loohcS

#split string into array of words, check words for length and reverse if longer than 4 characters, join with space

def reverse_words(str)
  arr = str.split  
  arr.map! do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  arr.join(' ')
end


puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'

puts reverse_words('Professional') 
puts reverse_words('Walk around the block') 
puts reverse_words('Launch School') 