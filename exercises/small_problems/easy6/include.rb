#Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

#input is an array and a value we want to know if the array contains
#output is a boolean true or false

#take the inputs, and use Enumerable#find to go through each element and test whether it is equal to the value we want. if true find returns that value which evaluates to true, otherwise it returns nil which is false

def include?(array, value)
  return false if array.empty?
  value == array.find{|x| x == value}
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false