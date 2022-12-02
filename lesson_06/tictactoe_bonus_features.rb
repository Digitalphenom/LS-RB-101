require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

cpu_count = []
user_count = []
game_count = [1]

def prompt(str)
  puts "=> #{str}"
end

def add_round(game)
  game << 1
end

def add_count(brd, user, cpu)
  if detect_winner(brd) == "Player"
    user << 1
   elsif detect_winner(brd) == "Computer"
    cpu << 1
  end

end

# rubocop: disable Metrics/AbcSize
def display_score(user, cpu)
  prompt "User Score: #{user.sum} Computer Score: #{cpu.sum}"
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
  square = empty_squares(brd).sample
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

def display_on_screen(brd, user, cpu, game)
  loop do
    display_board(brd)
    prompt "First To Win 5 Rounds Wins The Game!"
    display_score(user, cpu)
    prompt "Round #{game.sum}"
  
    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  
    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def display_winner(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} Won!"
  else
    prompt "It's a tie!"
  end
end

loop do
  loop do
    board = initialize_board
    display_on_screen(board, user_count, cpu_count, game_count)
    display_winner(board)
    add_count(board, user_count, cpu_count)
    add_round(game_count)
    break if user_count.sum >= 2 || cpu_count.sum >= 2
  end

  prompt "Play again? (y or no)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")

  user_count = []
  cpu_count = []
  game_count = [1]
end

  prompt "Thanks For Playing TicTacToe Goodbye!"