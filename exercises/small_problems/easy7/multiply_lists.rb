#Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
#You may assume that the arguments contain the same number of elements.

#input is a nested array
#output is a 1d array with elements multiplied together

#algo: create new array, iterate through input adding products to new array



def multiply_list(array1, array2)
  products = []
  
  array1.each_with_index{|x,i| products << x * array2[i]}
  
  products
  
end

#my solution takes the arguments, and iterates through one of them, accessing elements of the other for multiplication, then returns the new array.

#actually matches the LS one

#could have used zip method

#Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([3, 5, 7], [9, 10, 11]) 