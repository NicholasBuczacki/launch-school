#Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
#The results should be sorted by increasing value.

#You may assume that neither argument is an empty Array.

#input is 2 arrays
#output is 1 new array with each element from first array multiplied by each element of second array, sorted

#algo, make empty array, iterate through first array, multiplying each element by each element from second array and sending to empty array, then sort empty array

def multiply_all_pairs(arr1,arr2)
  
  multiplied = []
  
  arr1.each do |arr1_element|
    arr2.each do |arr2_element|
      multiplied << arr1_element * arr2_element
    end
  end

  multiplied.sort
  
end


#my solution was same as LS one, they also offered a solution that uses product and is more compact.


#Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]