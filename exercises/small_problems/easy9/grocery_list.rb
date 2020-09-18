#Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

#input is a nested array
#output is an array of strings
#algo is to create empty array, iterate through input adding x number of strings to array

def buy_fruit(array)
  returner = []
  array.each{|subarray| subarray[1].times{returner << subarray[0]}}
  returner
end


#Example:

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]