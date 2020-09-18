#Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

#input is a string without whitespace
#output is an array of strings from shortest to longest 

#algo: use times to execute a block for each character in the string. in that block add a substring of the first char to the (i+1) char to the holder array

def leading_substrings(string)
  holder = []
  string.length.times{|i| holder << string.slice(0, i+1)}
  holder
end

#Examples:

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']