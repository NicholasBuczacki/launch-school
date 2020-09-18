def suit_names(suit) # done
  case suit
  when 'D' then 'Diamonds'
  when 'S' then 'Spades'
  when 'H' then 'Hearts'
  else
    'Clubs'
  end
end

p suit_names('D')