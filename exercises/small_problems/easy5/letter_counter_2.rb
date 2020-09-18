#Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

#Words consist of any string of characters that do not include a space.

#input is a string
#output is a hash with the length of words in the string and how many occurences of words of that length there were in the string.

#take string and divide into an array of words
#use words to get keys, word lengths
#iterate over the keys, filling the word size counter hash with each key and the number of occurrences

def word_sizes(string)
  keys =[]
  words = string.split.each do |word|
    word.gsub!(/[^a-z]/i, '')
    keys << word.length
  end
  keys = keys.uniq
  size = {}
  keys.each do |key|
    size[key] = words.count{|wordies| key == wordies.length}
  end
  size
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}