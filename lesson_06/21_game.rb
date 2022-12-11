require "yaml"
require "pry"

MESSAGES = YAML.load_file('messages.yml')

INITIAL_MARKER = " "

VALUES = ('2'..'10').to_a

SUITS = {
  'D' => '♦',
  'S' => '♠',
  'H' => '♥',
  'C' => '♣',
        }

  FACES = ['2', '3', '4', '5', '6', '7', '8', '9', 'J', 'Q', 'K', 'A',]

player_stash = []
dealer_stash = []

player_total = []
dealer_total = []

  def prompt(str)
    puts "=> #{str}"
  end

  def generate_suit_values
    suit_value = {}
    (1..4).each { |num| suit_value[num] = SUITS.values.sample }
    suit_value
  end

  def generate_face_values
    face_value = {}
    (1..4).each { |num| face_value[num] = FACES.sample }
    face_value
  end

def display_deck(suits, face)
  system "clear"
  prompt "You're Bottom. Dealer is Top"
  puts "      ____________         ______________"
  puts "     |         #{face[1]}  |       |             |"
  puts "     |            |       |             |    "
  puts "     |            |       |             |"
  puts "     |      #{suits[1]}     |       |       #{"?"}     |"
  puts "     |            |       |             |"
  puts "     |            |       |             |"
  puts "     |____________|       |_____________|"
  puts "                                    "
  puts "     ____________         ______________"
  puts "    |         #{face[3]}  |       |          #{face[4]}  |"
  puts "    |            |       |             |    "
  puts "    |            |       |             |"
  puts "    |      #{suits[3]}     |       |      #{suits[4]}      |"
  puts "    |            |       |             |"
  puts "    |            |       |             |"
  puts "    |____________|       |_____________|"
  puts "                                    "
end

def display_screen(dealer, player, suit, face)
  prompt "Welcome to the game 21!"
  prompt "Ready? Press (y) to Start"
  start = gets.chomp
  display_deck(suit, face) if start.include?("y")
  prompt " Dealer #{dealer.sum}          Player #{player.sum}"
end

def store_card_values(face_value, dealer_stash, player_stash)

  player_stash << face_value.values_at(3, 4)
  dealer_stash << face_value.values_at(1, 2)
end

def player_turn()
  prompt "Player Turn"
  prompt "ENTER 1) HIT   |   2) STAY"
  answer = gets.chomp
  
  if answer.include?("1")
    generate_cards()
  elsif answer.include?("2")
    dealer_turn()
  end
end

def convert_values(p_total, d_total, player_stash, dealer_stash)

  converted_player_values = player_stash.map do |deck|
    deck.map do |value|
      deck = value.to_i 
      if deck.zero?
        deck = 10
      else
        deck
      end
    end
  end

  converted_dealer_values = dealer_stash.map do |deck|
    deck.map do |value|
      deck = value.to_i 
      if deck.zero?
        deck = 10
      else
        deck
      end
    end
  end
end





# Start Game
loop do
  suit_value = generate_suit_values()
  face_value = generate_face_values()

  display_screen(player_total, dealer_total, suit_value, face_value)
  store_card_values(face_value, dealer_stash, player_stash)
  binding.pry
  convert_values(player_total, dealer_total, dealer_stash, player_stash)
  player_turn()
  
  break
end
