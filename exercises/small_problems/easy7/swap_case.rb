#Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

#You may not use String#swapcase; write your own version of this method.

#input is a string
#output is a NEW string with all cases swapped
#algo: take string, split into characters, map (each char? rather than split and map?) and swap cases, join characters, return

def swapcase(string)
  swapped = ''
  string.each_char do |char|
    if char.upcase == char
      swapped << char.downcase
    elsif char.downcase == char
      swapped << char.upcase
    else
      swapped << char
    end
  end
  swapped
end
      
#final answer passes string in, initializes swapped empty string, then iterates through string, checking the case of each char and performing up/downcasing as needed before appending to swapped.
#solution gets each char, maps that array, then joins and returns it also uses regex.

#Example:

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'