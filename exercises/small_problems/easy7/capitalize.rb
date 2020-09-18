#Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

#You may assume that words are any sequence of non-blank characters.

#input string
#output capitalized string
#split string, iterate through string using capitalize, join string

def word_cap(string)
  words = string.split
  words.map!{|x| x.capitalize!}
  words.join(' ')
end

#Examples

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

p word_cap('this is a "quoted" word') 