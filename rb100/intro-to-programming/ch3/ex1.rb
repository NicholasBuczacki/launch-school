def greeting(string)
  puts "Hello #{string}!"
end

puts "Hello, please enter your name below:"

name = gets.chomp

greeting (name)