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