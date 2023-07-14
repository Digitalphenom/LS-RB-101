#require "yaml"
require "pry"

#MESSAGES = YAML.load_file('messages.yml')

SUITS = {
  '♦' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
  '♠' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
  '♥' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'],
  '♣' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
}

def prompt(str)
  puts "=> #{str}"
end

def draw_card(face, suit, count)
  arr = []
  count.times { arr << [suit.sample, face.sample.sample] }
  arr
end

def split_deck(arr)
  count = 0
  deck = []
  loop do
    deck << arr[count..count + 1]
    count += 2
    break if count == arr.size
  end
  deck
end

def convert_face_to_digit(deck)
  arr = 
  deck.map do |sub_array|
    sub_array.map do |key, value|
      if %w(J Q K).include?(value)
        10
      elsif value != "A"
        value.to_i
      end
    end
  end
  arr
end

  def display_deck(ps, pf, ds, df)
    system "clear"
    prompt "You're Bottom. Dealer is Top"
    
  puts "   __________    __________              "
  puts "  |       #{df[0]}  |  |          |             "
  puts "  |          |  |          |             "
  puts "  |          |  |          |             "
  puts "  |     #{ds[0]}    |  |     #{"?"}    |             "
  puts "  |          |  |          |   __________           "
  puts "  |          |  |          |  |       #{"?"}  | "
  puts "  |__________|  |__________|  |          | "
  puts "                              |          | "
  puts "   __________    __________   | #{"New Card"} | "
  puts "  |        #{pf[0]} |  |       #{pf[1]}  |  |          | "
  puts "  |          |  |          |  |          | "
  puts "  |          |  |          |  |__________|           "
  puts "  |     #{ps[0]}    |  |     #{ps[1]}    |             "
  puts "  |          |  |          |             "
  puts "  |          |  |          |             "
  puts "  |__________|  |__________|             "
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
  #start = gets.chomp

    #---------------------------------------------------------------
  arr_suit = SUITS.keys
  arr_face = SUITS.values

  arr = draw_card(arr_face, arr_suit, 4)
  dealer_cards, player_cards = split_deck(arr)
  dealer_face_deck, user_face_deck = convert_face_to_digit([dealer_cards, player_cards])
  binding.pry
  
  display_deck(user_suit_hsh, user_face_hsh, dealer_suit_hsh, dealer_face_hsh,)
  #binding.pry


  #---------------------------------------------------------------
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


