#As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. 
#If the number of minutes is negative, the time is before midnight.

#Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

#You may not use ruby's Date and Time methods.

#input string with time
#output integer minutes before or after midnight

#turn string into hours and minutes
#add into total minutes
#return

def after_midnight(time)
  hour_min = time.split(':')
  min = hour_min[1].to_i + (hour_min[0].to_i * 60)
  min == 0 || min == 1440 ? 0 : min
end

def before_midnight(time)
  hour_min = time.split(':')
  min = 1440 - ( hour_min[1].to_i + (hour_min[0].to_i * 60))
  min == 0 || min == 1440 ? 0 : min
end

#Examples:

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

