#Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

#Note: 1 square meter == 10.7639 square feet

#Do not worry about validating the input at this time.

puts "Hi, long is the room in meters?"

length = gets.chomp.to_i

puts "How wide is it?"

width = gets.chomp.to_i

meters = length * width

feet = meters * 10.7638 

puts "The room is #{meters} square meters and #{feet} square feet!"