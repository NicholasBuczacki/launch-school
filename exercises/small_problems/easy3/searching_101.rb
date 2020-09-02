#Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

numbers = Array.new

puts 'Please enter number 1 of 6'
numbers << gets.to_i
puts 'Please enter number 2 of 6'
numbers << gets.to_i
puts 'Please enter number 3 of 6'
numbers << gets.to_i
puts 'Please enter number 4 of 6'
numbers << gets.to_i
puts 'Please enter number 5 of 6'
numbers << gets.to_i
puts 'Please enter number 6 of 6'
numbers << gets.to_i

sixth = numbers.pop

if numbers.include?(sixth)
  puts "#{sixth} appears in #{numbers}!"
else
  puts "#{sixth} does not appear in #{numbers}!"
end