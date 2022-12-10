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


def display_deck(suits, crd)
  system "clear"
  prompt "You're Bottom. Dealer is Top"
  puts "      ____________         ______________"
  puts "     |          #{crd}  |       |           #{crd}  |"
  puts "     |            |       |             |    "
  puts "     |            |       |             |"
  puts "     |      #{suits[1]}     |       |       #{suits[2]}     |"
  puts "     |            |       |             |"
  puts "     |            |       |             |"
  puts "     |____________|       |_____________|"
  puts "                                    "
  puts "     ____________         ______________"
  puts "    |          #{crd}  |       |           #{crd}  |"
  puts "    |            |       |             |    "
  puts "    |            |       |             |"
  puts "    |      #{suits[3]}     |       |      #{suits[4]}      |"
  puts "    |            |       |             |"
  puts "    |            |       |             |"
  puts "    |____________|       |_____________|"
  puts "                                    "
end
