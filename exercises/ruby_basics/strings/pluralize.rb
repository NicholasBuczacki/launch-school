#Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

word_list = words.split(' ')

word_list.each do |s|
  puts s + 's'
end

