#Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. 
#If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

#input is a 1d array
#output is a nested array with the elements from the first array split into the nested arrays
#could do with a loop, but I think i'd rather use a method
#slice could do it in a couple lines

def halvsies(array)
  half = []
  middle = (array.length / 2.0 ).ceil
  half << array.slice(0,middle) #start, # of elements
  half << array.slice(middle, array.length) #can use middle and not middle+1 because middle equals the index of the element after middle.
  half
end





#Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]