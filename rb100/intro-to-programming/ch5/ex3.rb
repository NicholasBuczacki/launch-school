def zeroer(var)
  puts var
  if var > 0 
    zeroer(var - 1)
  end
end

zeroer(6)