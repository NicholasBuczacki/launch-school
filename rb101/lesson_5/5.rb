#Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
#figure out the total age of just the male members of the family.

#input is a hash where the values are hashes
#output is an integer from adding some of the values in the inner hashes

#set sum_male_ages to 0
#iterate through each key/value pair, adding age if male

sum_male_ages = 0

munsters.each_value{|hash| sum_male_ages += hash['age'] if hash['gender'] == 'male'}

p sum_male_ages
    