#A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

#Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

#input is an integer
#output is the integer doubled or kept the same
#algo: check if the number sliced is equal on each half, if it is return it, if it isn't, double it

def twice(number)
  middle_index = ((number.to_s.length) / 2) - 1
  number.to_s[0,middle_index+1] == number.to_s[middle_index+1, number.to_s.length + 1] ? double = true : double = false
  double ? number : 2 * number
end

#Examples:

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
#Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the 
#underscores when running your tests.