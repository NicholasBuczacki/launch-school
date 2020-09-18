FIRST = 'computer'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "==> #{msg}"
end

def joinor(empties, punctuation = ', ', word = 'or')
  returner = []
  if empties.size == 1  
    returner << empties[0]
  elsif empties.size == 2
    returner << empties[0] << " #{word} " << empties[1]
  else
    empties[0..-2].each { |square| returner << square << punctuation }
    returner << word <<  " #{empties[-1]}"
  end
  returner.join
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2 # if two of the squares in a winning line are X
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first # select empty square id in at risk line
  else
    nil # returns nil which is falsey if line is not at risk
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line| # Attack mode
    square = find_at_risk_square(line, brd, COMPUTER_MARKER) 
    break if square
  end
  WINNING_LINES.each do |line| # checking each winning line to see if at risk
    square = find_at_risk_square(line, brd, PLAYER_MARKER) # breaks when first at risk square found
    break if square
  end unless !!square
  square = 5 if empty_squares(brd).include?(5) && !square
  square = empty_squares(brd).sample if !square # select random square if no at risk squares found
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3 # Values_at returns an array of the values at each key passed to it
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3 # *array passes each element individually as a list of keys
      return 'Computer'
    end
  end
  nil
end

def alternate_player(player)
  player == 'Player' ? player = 'Computer' : player = "Player"
end

def place_piece!(brd, player)
  player == 'Player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

player_wins = 0
computer_wins = 0

choice = FIRST

if FIRST == 'choose'
  prompt "Hello, and welcome to Tic Tac Toe. Please decide whether you would like to play first, and enter either player or computer to make a selection."
  choice = gets.chomp
end

if choice == 'player' 
  loop do
    board = initialize_board
    current_player = 'Player'
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      detect_winner(board) == 'Player' ? player_wins += 1 : computer_wins += 1
    else
      prompt "It's a tie!"
    end
    prompt "The scores are Player: #{player_wins} Computer: #{computer_wins} the game will terminate after one opponent has 5 wins."
    break if player_wins == 5 || computer_wins == 5
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
else
  loop do
    board = initialize_board
    current_player = 'Computer'
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      detect_winner(board) == 'Player' ? player_wins += 1 : computer_wins += 1
    else
      prompt "It's a tie!"
    end
    prompt "The scores are Player: #{player_wins} Computer: #{computer_wins} the game will terminate after one opponent has 5 wins."
    break if player_wins == 5 || computer_wins == 5
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing tic tac toe, goodbye."