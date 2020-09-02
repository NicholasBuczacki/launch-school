#Write a program that prompts the user for two positive integers,
#and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

def prompt(str)
  puts "==> #{str}"
end

prompt 'Hello, today I will add, subtract, multiply, divide, modulate, and exponate 2 positive integers for you.'
prompt 'Please enter your first positive integer.'
num1 = gets.to_i
prompt 'Please enter your second positive integer.'
num2 = gets.to_i

prompt "#{num1} + #{num2} = #{num1 + num2}."
prompt "#{num1} - #{num2} = #{num1 - num2}."
prompt "#{num1} * #{num2} = #{num1 * num2}."
prompt "#{num1} / #{num2} = #{num1 / num2}."
prompt "#{num1} % #{num2} = #{num1 % num2}."
prompt "#{num1} ** #{num2} = #{num1 ** num2}."