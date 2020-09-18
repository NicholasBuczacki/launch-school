#Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

#You may not use Array#reverse or Array#reverse!.


#input an array of elements
#output the same array, mutated so that the elements are reversed

#make copy array - oof, making copy array still references same object
#map with index the input array going from the end of copy to the start
=begin
def reverse!(array)
  copy = array
  array.map!.with_index{|x, i| copy[copy.length - 1 - i]}
end

my failed attempt above
=end

def reverse!(array)
  left = 0
  right = -1
  
  while left < array.length/2
    array[left], array[right] = array[right], array[left] #idiom for exchanging places
    left += 1
    right -= 1
  end
  array
end

#exchanges elements from left to right
#/2 so we do not rebuild original array


list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id



#Examples:

=begin
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
=end