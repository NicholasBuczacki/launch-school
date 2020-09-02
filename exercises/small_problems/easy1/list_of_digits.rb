#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

#Examples:

#puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#puts digit_list(7) == [7]                     # => true
#puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(n)
  list = n.to_s
  list = list.split('')
  list = list.map do |i|
    i.to_i
  end
  return list
end

p digit_list(5748)