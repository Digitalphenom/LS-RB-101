#require "yaml"
require "pry"

#MESSAGES = YAML.load_file('messages.yml')

SUITS = {
  'D' => '♦',
  'S' => '♠',
  'H' => '♥',
  'C' => '♣',
}

FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A',].map do |val| val.split * 4
end

FACES.flatten!.shuffle!

suit_hsh = {}
face_hsh = {}


def prompt(str)
  puts "=> #{str}"
end

def generate_cards(suit_hsh, face_hsh)
  (1..4).each { |num| suit_hsh[num] = SUITS.values.sample }
  (1..4).each { |num| face_hsh[num] = FACES.sample }
  faces = face_hsh.values
  suits = suit_hsh.values
  [faces, suits]
end

def convert_face_to_digit(deck)
  arr = 
  deck.map do |value|
    if %w(J Q K).include?(value)
      10
    elsif value != "A"
      value.to_i
    end
  end
  arr
end

def split_deck(face_deck)
  arr = []
  index = 0
  until arr.size == 2 
    arr << face_deck[index..index + 1]
    index += 2
  end
  arr
end

  def display_deck(ps, pf, ds, df, pt, ct)
    system "clear"
    prompt "You're Bottom. Dealer is Top"
    puts "   __________    __________              "
    puts "  |       #{df[1]}  |  |        #{" "} |         #{ct.flatten}    "
    puts "  |          |  |          |             "
    puts "  |          |  |          |             "
    puts "  |     #{ds[1]}    |  |     #{"?"}    |             "
    puts "  |          |  |          |   __________           "
    puts "  |          |  |          |  |       #{pf[1]}  | "
    puts "  |__________|  |__________|  |          | "
    puts "                              |          | "
    puts "   __________    __________   |     #{ps[2]}    | "
    puts "  |        #{pf[1]} |  |       #{pf[2]}  |  |          | "
    puts "  |          |  |          |  |          | "
    puts "  |          |  |          |  |__________|           "
    puts "  |     #{ps[1]}    |  |     #{ps[2]}    |             "
    puts "  |          |  |          |             "
    puts "  |          |  |          |             "
    puts "  |__________|  |__________|         #{pt.flatten}    "
  puts "                                           "
end

def player_turn
  prompt "Player Turn"
  prompt "ENTER 1) HIT   |   2) STAY"
  hit_or_stay = gets.chomp
end

def dealer_turn
  prompt "Dealer Turn"
  prompt "ENTER 1) HIT   |   2) STAY"
end

def display_score(dealer_total, player_total)
  prompt " Dealer #{dealer_total.flatten.sum}          Player #{player_total.flatten.sum}"
end

def busted()
  prompt "YOU LOSE"
end

def calculate_winner()
  
end

# Start Game
prompt "Welcome to the game 21!"
prompt "Ready? Press (y) to Start"
start = gets.chomp

face_deck, suit_deck = generate_cards(suit_hsh, face_hsh)
#binding.pry
face_deck = convert_face_to_digit(face_deck)
player_deck, cpu_deck =  split_deck(face_deck)
#binding.pry



#---------------------------------------------------------------


display_deck(player_suit, player_face, dealer_suit, dealer_face, player_total, dealer_total)
display_score(dealer_total, player_total)

loop do
  # Player Turn
  hit_or_stay = player_turn()

  if hit_or_stay.include?("1")
    player_total = generate_values(player_suit, player_face, player_total)
    display_deck(player_suit, player_face, dealer_suit, dealer_face, player_total, dealer_total)
    display_score(dealer_total, player_total)
    
      if player_total.flatten.sum >= 21
        winner()
        break
      elsif player_total.flatten.sum >= 21
        busted()
        break
      end
  end
  loop do
    # Dealer Turn
    dealer_turn()
    dealer_total = generate_values(dealer_suit, dealer_face, dealer_total)
    display_deck(player_suit, player_face, dealer_suit, dealer_face, player_total, dealer_total)
    display_score(dealer_total, player_total)
    if dealer_total.flatten.sum <= 17
      next
    elsif dealer_total.flatten.sum > 17
      break
    end
    break
  end
end


