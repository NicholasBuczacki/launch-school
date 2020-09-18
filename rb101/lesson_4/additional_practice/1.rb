#Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#Turn this array into a hash where the names are the keys and the values are the positions in the array.

#input - array of names
#output - hash of names as keys and array indexes as values

flint_hash = {}

flintstones.each_with_index do |key, index|
  flint_hash[key] = index
end
