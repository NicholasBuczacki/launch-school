#Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

#input is first and last name separated by space in a string
#output is a string with last name comma first name
#algo is to split the initial string, then return a new string with the proper formatting

def swap_name(string)
  "#{string.split[1]}, #{string.split[0]}"
end

#Examples

p swap_name('Joe Roberts') == 'Roberts, Joe'