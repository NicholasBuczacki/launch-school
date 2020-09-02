# car_loan_calculator.rb

def prompt(msg)
  puts "==> #{msg}"
end

prompt('Hello and welcome to the car loan calculator!')
prompt('Please enter the total amount of the car loan in USD.')
loan_total = gets.chomp.to_i
prompt('Thanks! Now please enter the Annual Percentage Rate being charged on your loan in percent (eg 12.7% APR).')
apr = gets.chomp.to_f
prompt('Great! Finally, please enter your loan length in years.')
length_years = gets.chomp.to_i

# mpr is monthly percentage rate

mpr = apr / 1200
length_months = length_years * 12

# use m = p * (j / (1 - (1 + j)**(-n)))

monthly_payment = loan_total * (mpr / (1 - (1 + mpr)**(-length_months)))

prompt("Your #{length_years} year car loan at #{apr}% interest will have a monthly payment of $#{monthly_payment.round(2)}.")
