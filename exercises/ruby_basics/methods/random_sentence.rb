names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def sentence(name, activity)
  return name + ' went ' + activity + ' today!'
end

def name(array)
  return array.sample
end

def activity(array)
  return array.sample
end

puts sentence(name(names), activity(activities))