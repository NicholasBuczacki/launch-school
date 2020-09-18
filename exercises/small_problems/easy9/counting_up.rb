#Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

#You may assume that the argument will always be a valid integer that is greater than 0.

#input is an integer
#output is an array of numbers from 1 to the integer
#algo is to define an empty array and a counter, then integer times add elements to the array while updating the counter

def sequence(integer)
  numbers = []
  counter = 1
  
  integer.times do 
    numbers << counter
    counter += 1
  end
  
  numbers
end


#Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]



#ls solution had a trick i was looking for. you have to define the range then .to_a
#def sequence(number)
 #(1..number).to_a
#end