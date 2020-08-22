#Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

#Use map to iterate through the array, returning a new array with the result of the block run
#Use flatten to turn multidimensional arrays 1d
#Use split to split the phrases by spaces

a = a.map do |phrase|
  phrase.split(' ')
end

puts a.flatten