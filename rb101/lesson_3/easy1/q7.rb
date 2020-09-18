#If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

#We will end up with this "nested" array:

p flintstones.flatten

#Make this into an un-nested array.