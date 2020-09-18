#Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#input is an array of words
#output is an array of words that is the same object but with the words shortened
#doing a transformation

#use map to iterate through words only returning first 3 characters

flintstones.map! do |name|
  name[0,3]
end