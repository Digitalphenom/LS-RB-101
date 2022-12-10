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
  'Q' => '?'
        }

  FACES = ['2', '3', '4', '5', '6', '7', '8', '9', 'J', 'Q', 'K', ' ','A']

player_total = 0
dealer_total = 0

  def prompt(str)
    puts "=> #{str}"
  end

  def initialize_suit_values
    blank_suits = {}
    (1..4).each { |num| blank_suits[num] = INITIAL_MARKER }
    blank_suits
  end

  def initialize_face_values
    blank_face = {}
    (1..4).each { |num| blank_face[num] = INITIAL_MARKER }
    blank_face
  end

def display_deck(suits, face)
  system "clear"
  prompt "You're Bottom. Dealer is Top"
  puts "      ____________         ______________"
  puts "     |          #{face[1]}  |       |           #{face[2]}  |"
  puts "     |            |       |             |    "
  puts "     |            |       |             |"
  puts "     |      #{suits[1]}     |       |       #{suits[2]}     |"
  puts "     |            |       |             |"
  puts "     |            |       |             |"
  puts "     |____________|       |_____________|"
  puts "                                    "
  puts "     ____________         ______________"
  puts "    |          #{face[3]}  |       |           #{face[4]}  |"
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
  # prompt " Dealer #{dealer}          Player #{player}"
end

blank_suit = initialize_suit_values()
blank_face = initialize_face_values()
display_screen(player_total, dealer_total, blank_suit, blank_face)
