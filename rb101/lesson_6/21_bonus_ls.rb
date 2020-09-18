SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
MAX_VALUE = 30
DEALER_HIT = 26

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_VALUE
  end

  sum
end

def busted?(tot)
  tot > MAX_VALUE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_tot, player_tot)

  if player_tot > MAX_VALUE
    :player_busted
  elsif dealer_tot > MAX_VALUE
    :dealer_busted
  elsif dealer_tot < player_tot
    :player
  elsif dealer_tot > player_tot
    :dealer
  else
    :tie
  end
end

def display_result(dealer_tot, player_tot)
  result = detect_result(dealer_tot, player_tot)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_output(player_crds, player_tot, dealer_crds, dealer_tot)
  puts "=============="
  prompt "Dealer has #{dealer_crds}, for a total of: #{dealer_tot}"
  prompt "Player has #{player_crds}, for a total of: #{player_tot}"
  puts "=============="
end

def declare_winner(player_wins, dealer_wins)
  if player_wins > dealer_wins
    prompt "The player won with #{player_wins} vs the dealer's #{dealer_wins}"
  elsif dealer_wins > player_wins
    prompt "The player lost with #{player_wins} vs the dealer's #{dealer_wins}"
  else
    prompt "The player and dealer tied with #{player_wins} wins each"
  end
end

player_wins = 0
dealer_wins = 0

loop do
  prompt "Welcome to Twenty-One! The score is Player: #{player_wins} Dealer: #{dealer_wins}. First to 5 wins."

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  dealer_total = total(dealer_cards)
  player_total = total(player_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total += player_cards[-1][1].to_i
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  if busted?(player_total)
    grand_output(player_cards, player_total, dealer_cards, dealer_total)
    display_result(dealer_total, player_total)
    dealer_wins += 1
    break if player_wins == 5 || dealer_wins == 5
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_HIT

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total += dealer_cards[-1][1].to_i
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    grand_output(player_cards, player_total, dealer_cards, dealer_total)
    display_result(dealer_total, player_total)
    player_wins += 1
    break if player_wins == 5 || dealer_wins == 5
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  grand_output(player_cards, player_total, dealer_cards, dealer_total)

  display_result(dealer_total, player_total)

  case detect_result(dealer_total, player_total)
  when :player then player_wins += 1
  when :dealer then dealer_wins += 1
  end

  break unless play_again?
  break if player_wins == 5 || dealer_wins == 5
end

declare_winner(player_wins, dealer_wins)
prompt "Thank you for playing Twenty-One! Good bye!"

#1 Done

#2 Because you're at the end of the main gameplay loop, there is no need to skip to the next iteration of the game in the final play_again? call

#3 Need a grand output method. Name it grand_output. Will need to accept 2 cards and 2 totals, and display all 4 appropriately
#3 Will put before each play_again? call

#4 Keep track of who won, and declare first to reach 5 as winner.
#4 Initialize counters just before loop. Add to a counter at each end condition.
#4 Have break if a counter is 5. Need declare winner method.
#4 Display wins in grand output. ACTUALLY, put in welcome message.

#5 Create a new max value constant, and a dealer hit constant, and implement them