words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
#iterate over array
#sort each word into alphabetical order
#if key exists, append current word into value (array)
#otherwise, create a new key with the sorted word

#create empty hash
results = {}

#Iterate over words array
words.each do |word|
  #We need to whether each word is an anagram or not, we can do this by splitting up the
  #word into characters and sorting them. Split splits word into an array of individual 
  #characters. Sort sorts them first to last. Join reassembles them into a string.
  key = word.split('').sort.join
  #Checking if results has that key already, if it does add the value to that key's array,
  #if it doesn't add the new key
  if results.has_key?(key)
    #pushing new word to the value array for the key
    results[key].push(word)
  else
    #adding the new key/value pair if the key hasn't already been added
    results[key] = [word]
  end
end

results.each_value do |value|
  puts value.to_s
end