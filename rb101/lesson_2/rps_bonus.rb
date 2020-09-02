VALID_CHOICES = %w(r p l scissors spock)

BEATS = { 'r' => ['l', 'scissors'], 'l' => ['p', 'spock'], 'p' => ['r', 'spock'], 'spock' => ['r', 'scissors'], 'scissors' => ['p', 'lizzard'] }

def prompt(message)
  puts "==> #{message}"
end

def win?(first, second)
  BEATS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("You tied!")
  end
end

choice = ''
computer_choice = ''
computer_wins = 0
player_wins = 0

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    computer_choice = VALID_CHOICES.sample

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  prompt("You chose: #{choice} and computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  win?(choice, computer_choice) ? player_wins += 1 : computer_wins += 1

  if computer_wins == 5
    prompt("The computer is the grand champion!")
    break
  elsif player_wins == 5
    prompt("You are the grand champion!")
    break
  end

  prompt("The computer has #{computer_wins} wins and you have #{player_wins} wins the game will terminate when once of you wins 5 times. Would you like to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing, goodbye!")
