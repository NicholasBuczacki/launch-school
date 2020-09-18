#In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#remove people with age 100 and greater.

#input age hash
#output age hash minus old people

#iterate through ages, delete if age is over 100

ages.delete_if{|name, age| age > 100}