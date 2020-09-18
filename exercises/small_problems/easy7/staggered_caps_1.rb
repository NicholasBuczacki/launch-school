#Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, 
#and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

#input is a string
#output is a new string. first char and then every other after is capitalized. spaces and symbols count for alternation.

#algo: pass string to method, initialize empty array variable, split string into chars, iterate through, capitalizeing, join, return

def staggered_case(string)
  staggered = string.chars.map.with_index do |char, i|
    i.even? ? char.upcase : char.downcase
  end
  staggered.join
end

#my solution takes the string as an input, creates a new var so we don't mutate the caller, iterates through each character, capitalizing if the index of the character in the input string is even. 
#Then joins and returns the array as a string.

#ls solution is basically what i did in swap_case.rb but they used a boolean that changes on every iteration through the array with ifs rather than checking with upcase/downcase.

#Example:

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'