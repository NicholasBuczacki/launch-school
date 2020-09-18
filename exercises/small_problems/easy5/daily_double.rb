#Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. 
#You may not use String#squeeze or String#squeeze!.

#Examples:

#input is a string
#output is a new string with repeats removed
#separate string into chars, iterate through chars, don't add char if equal to previous. Add if it is

def crunch(string)
  crunched = []
  chars = string.split('') 
  chars.each_with_index do |c,i|
    if i == 0
      crunched << c
    elsif chars[i-1] != c
      crunched << c
    end
  end
  crunched.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''