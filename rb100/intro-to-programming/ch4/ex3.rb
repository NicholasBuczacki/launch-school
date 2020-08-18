puts "Please enter an integer from 0 to 100 inclusive."
input = gets.chomp.to_i
if input <= 50 && input >= 0
  puts "Your number is between 0 and 50!"
elsif input == 51
  puts "You entered 51!"
elseif input > 51 && input <=100
  puts "Your number is between 51 and 100!"
else
  puts "Uh oh, you can't follow directions!"
end
