#Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
#ex:

#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

#input string
#output hash
#get unique letters in string, count how many times each appears in string

keys = statement.split('').uniq
hash = {}
keys.each do |key|
  hash[key] = statement.split('').count(key)
end

p hash