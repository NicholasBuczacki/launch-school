#Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. 
#If the argument has an even length, you should return exactly two characters.

#input is a string
#output is a string of the middle char/s 1 char if odd number of chars, 2 if even

#algo: use length to determine odd or even for if. inside if return one or two middle indices

def center_of(string)
  string.length.even? ? even = true : even = false
  if even
    string.slice((string.length / 2)-1 , 2)
  else
    string.slice(string.length / 2, 1)
  end
end

#Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'