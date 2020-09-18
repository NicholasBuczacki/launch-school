#Build a program that displays when the user will retire and how many years she has to work till retirement.

#Example:

#What is your age? 30
#At what age would you like to retire? 70

#It's 2016. You will retire in 2056.
#You have only 40 years of work to go!

p 'What is your age?'
age = gets.chomp
p 'At what age would you like to retire?'
retire_age = gets.chomp

current_year = Time.now.year


puts "It's #{current_year}. You will retire in #{current_year + (retire_age.to_i - age.to_i)}."
puts "You only have #{retire_age.to_i - age.to_i} years to go!"