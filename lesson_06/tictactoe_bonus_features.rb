#require "pry"
#require "pry-byebug"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
ORDER_OPTION = [1, 2, 3]

cpu_count = 0
user_count = 0
game_count = 1

def prompt(str)
  puts "=> #{str}"
end

def add_round(game)
  game + 1
end

def add_count(brd, user, cpu)
  case detect_winner(brd)
  when "Player"
    [user + 1, cpu]
  when "Computer"
    [user, cpu + 1]
  else
    [user, cpu]
  end
end

# rubocop: disable Metrics/AbcSize
def display_score(user, cpu)
  prompt "User Score: #{user} Computer Score: #{cpu}"
end

def display_board(brd)
  system "clear"
  prompt "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "         |       |"
  puts "      #{brd[1]}  |   #{brd[2]}   |  #{brd[3]}"
  puts "         |       |"
  puts "   ------+-------+------"
  puts "         |       |"
  puts "      #{brd[4]}  |   #{brd[5]}   |  #{brd[6]}"
  puts "         |       |"
  puts "   ------+-------+------"
  puts "         |       |"
  puts "      #{brd[7]}  |   #{brd[8]}   |  #{brd[9]}"
  puts "         |       |"
  puts ""
end

# rubocop: enable Metrics/AbcSize
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def insert_delimeter(brd)
  squares_array = empty_squares(brd)
  if squares_array.size > 1
    squares_array.join(", ").insert(-2, "or ")
  else
    squares_array.join("")
  end
end

def find_at_risk_square(line, brd, marker)
# line => sub-array in WINNING_LINES
  if brd.values_at(*line).count(marker) == 2
    brd.select{ |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def find_fifth_square(brd)
  if brd.values_at(5).include?(" ")
    brd.keys[4]
  else
    nil
  end
end

def player_places_piece!(brd)
  square = ""

  loop do
    prompt "Choose a square (#{insert_delimeter(brd)}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = find_fifth_square(brd)
  end

  if !square
    square = empty_squares(brd).sample
  end

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
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def display_on_screen(brd, user, cpu, game, current_player)
  loop do
    display_board(brd)
    display_score(user, cpu)
    prompt "Round #{game}"
    place_piece!(brd, current_player)
    current_player = alternate_player(current_player)
    return if someone_won?(brd) || board_full?(brd)
  end
end

def who_goes_first?
  loop do
    prompt "Who goes first?"
    prompt " (1) User | (2) Computer | (3) Let Computer Choose"
    choice = gets.chomp.to_i
    return choice if ORDER_OPTION.include?(choice)
    prompt "Sorry, that's not a valid choice"
  end
end

def display_round_winner(brd)
  prompt someone_won?(brd) ? "#{detect_winner(brd)} Won!" : "It's a tie!"
end

def display_winner(user, cpu)
  prompt user > 2 ? "User Wins The GAME!" : "Computer Wins The GAME!"
end

def play_again?()
  prompt "Play again? (y or no)"
  answer = gets.chomp
end

def place_piece!(brd, current_player)
  current_player == "Player" ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(current_player)
  current_player == "Player" ? "Computer" : "Player"
end

def player_or_computer(choice)
  case choice
  when 1
    "Player"
  when 2
    "Computer"
  when 3
    ["Player", "Computer"].sample
  end
end

loop do
  prompt "Welcome to Tic Tac Toe!"
  prompt "First To 5, Wins The Game!"
  loop do
    board = initialize_board
    choice = who_goes_first?()
    current_player = player_or_computer(choice)
    display_on_screen(board, user_count, cpu_count, game_count, current_player)
    display_round_winner(board)

    user_count, cpu_count = add_count(board, user_count, cpu_count)
    game_count = add_round(game_count)

    if user_count >= 5 || cpu_count >= 5
      display_winner(user_count, cpu_count) 
    else
      next
    end

    answer = play_again?()
    if answer.include?("y")
      cpu_count, user_count, game_count = 0, 0, 1
      next
    elsif answer.include?("n")
      break
    end
  end
  break
end

prompt "Thanks For Playing TicTacToe Goodbye!"