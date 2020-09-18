#Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. 
#The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

#input is an array with a person's name in 3 elements, and a hash with their title and job
#output is to print a welcome message using their name and title/job

def greetings(name, job)
  puts "Hello #{name[0]} #{name[1]} #{name[2]}, it's nice to have a #{job[:title]} #{job[:occupation]} around!"
end

#Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
