#Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

arr = 1..99

arr.each do |n|
  puts n if n.even?
end