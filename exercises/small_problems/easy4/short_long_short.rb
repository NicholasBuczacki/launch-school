#Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  long = ''
  short = ''
  if str1.length > str2.length
    long = str1
    short = str2
  else
    long = str2
    short = str1
  end
  short + long + short
end



#Examples:

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"