#Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

#You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

#input is an array
#output is a new non-mutated array with elements reversed

def reverse(array)
  reversed = []
  index = -1
  while index.abs <= array.length
    reversed << array[index]
    index -= 1
  end
  reversed
end

#Examples:

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true