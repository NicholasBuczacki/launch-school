#Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

#input is an array of 3 hashes
#output is an array with some of the hashes removed if they contain odd integers

#algo: call .select! on arr, then call .all? on the hash values and check if all their elements are even

arr.select!{|hash| hash.values.flatten.all?{|num| num.even?}}

p arr