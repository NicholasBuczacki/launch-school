#Using [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] use select to extract all odd numbers into a new array

odds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select{|n| n.odd?}

puts odds