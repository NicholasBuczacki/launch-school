#Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

#Do not use the method Array#rotate or Array#rotate! for your implementation.

#input is an array containing strings or numbers
#output is a new array with the lowest indexed element moved to the highest index position, and all other element indices reduced by 1
#algo is to create a new empty array, iterate through the input array, adding all elements besides index zero to the empty array, then adding the original 0 indexed element to the new array

def rotate_array(input_array)
  returner = []
  ((input_array.size)-1).times{|i| returner << input_array[i+1]}
  returner << input_array[0]
  returner
end

#Example:

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

=begin
ls answer:
def rotate_array(array)
  array[1..-1] + [array[0]]
end
takes all elements besides the first then appends the first
=end