#How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

p arr.sort_by{|num| num.to_i}.reverse