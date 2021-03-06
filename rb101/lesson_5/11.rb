#Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

#input is a nested array
#output is a nested array with certain elements from the internal arrays removed
#algo: map the outer array, and run select for the internal arrays

arr2 = arr.map do |inner| 
  inner.select do |x|
    x % 3 == 0
  end
end

p arr2