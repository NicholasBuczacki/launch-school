#Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

#You may assume that both input Arrays are non-empty, and that they have the same number of elements.

#input is 2 arrays
#output is the 2 arrays merged with alternating elements

#get length of arrays
#add together
#push to new array, alternating middle and start

def interleave(arr1,arr2)
  new_arr = []
  counter = 0
  counter1 = 0
  counter2 = 0
  
  while counter < (arr1 + arr2).size
    if counter.even?
      new_arr << arr1[counter1]
      counter1 += 1
    else
      new_arr << arr2[counter2]
      counter2 += 1
    end
    counter += 1
  end
  new_arr
end





#Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']