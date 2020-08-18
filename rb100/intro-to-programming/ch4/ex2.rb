def capitalizer(string)
  if string.length > 10
    string.upcase!
  else
    nil
  end
end

puts capitalizer("Nicholas Buczacki")