SUITS = %w(H S C D)
RANKS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

def prompt(message) # done
  puts "==> #{message}"
end

def new_shuffled_deck!(empty_deck) # done
  SUITS.each do |suit|
    RANKS.each do |value|
      empty_deck << [suit, value]
    end
  end
  empty_deck.shuffle!
end

def total(cards) # done
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "Ace"
             11
           elsif value.to_i == 0
             10
           else
             value.to_i
           end
  end

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards) # done
  total(cards) > 21
end

def hit!(cards, current_deck) # done
  cards << current_deck.shift
end

def who_won(human_cards, ai_cards) # done
  if total(human_cards) == total(ai_cards)
    'Tie'
  elsif total(human_cards) > total(ai_cards)
    'Player'
  else
    'Dealer'
  end
end

def display_results(winner, human_cards, ai_cards)
  case winner
  when 'Tie'
    prompt "You tied the dealer with #{total(human_cards)} each."
  when 'Player'
    prompt "You beat the dealer's #{total(ai_cards)} with your #{total(human_cards)}."
  when 'Dealer'
    prompt "You lost to the dealer's #{total(ai_cards)} with your #{total(human_cards)}."
  end
end

def show_hand(cards, who)
  msg = "#{who} cards are: "
  cards[0..-2].each { |card| msg << "#{card[1]}, " }
  msg << "and #{cards[-1][1]} for a total of #{total(cards)}."
  msg
end

prompt "Hello, and welcome to 21. Enjoy the game!"

player_wins = 0

dealer_wins = 0

loop do
  winner = nil
  loop do # loop for main gameplay
    deck = []
    new_shuffled_deck!(deck)
    player_cards = deck.shift(2)
    dealer_cards = deck.shift(2)

    prompt "Dealer has: #{dealer_cards[0][1]} and an unknown card."

    loop do # initiate player turn
      prompt show_hand(player_cards, 'Player')
      prompt "Would you like to hit or stay?"
      hit_or_stay = gets.chomp
      hit!(player_cards, deck) if hit_or_stay == 'hit'
      prompt "You drew a #{player_cards[-1][1]}." if hit_or_stay == 'hit'
      break if hit_or_stay != 'hit' || busted?(player_cards)
    end # end player turn

    # dealer wins if player busted, winner assigned, go to replay loop
    prompt show_hand(player_cards, 'Player') # show hand after player goes
    winner = "Dealer" if busted?(player_cards)
    prompt "You busted with #{total(player_cards)}, the Dealer won." if busted?(player_cards)
    break if busted?(player_cards)

    # dealer turn, stay if total better than 17
    prompt "The dealer shows his hand..."
    loop do
      prompt show_hand(dealer_cards, 'Dealer')
      if total(dealer_cards) >= 17
        prompt "The dealer stayed."
        break
      else
        hit!(dealer_cards, deck)
        prompt "The dealer drew a #{dealer_cards[-1][1]}."
        break if total(dealer_cards) > 21
      end
    end
    # player wins if dealer busted, winner assigned, go to replay loop
    winner = "Player" if busted?(dealer_cards) && winner != 'Dealer'
    prompt "Dealer busted with #{total(dealer_cards)}, you won!" if busted?(dealer_cards)
    break if busted?(dealer_cards)

    # assign winner
    winner = who_won(player_cards, dealer_cards)
    display_results(winner, player_cards, dealer_cards)

    break
  end # end main gameplay

  case winner # adjust scores
  when 'Player' then player_wins += 1
  when 'Dealer' then dealer_wins += 1
  end

  prompt "The player currently has #{player_wins} and the dealer currently has #{dealer_wins}, would you like to play again? (y/n)"
  play_again = gets.chomp
  break if play_again == 'n'
end

prompt "Thank you for playing 21, goodbye!"
