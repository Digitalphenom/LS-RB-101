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
      if %w(J Q K ).include?(value)
        10
      elsif value != "A"
        value.to_i
      end
    end
  end
  arr
end

def display_deck(dealer, player)
  system "clear"
  prompt "You're Bottom. Dealer is Top"

  # puts "   __________    __________              "
  # puts "  |       #{dealer[0][1]}  |  |          |             "
  # puts "  |          |  |          |             "
  # puts "  |          |  |          |             "
  # puts "  |     #{dealer[0][0]}    |  |     #{"?"}    |             "
  # puts "  |          |  |          |   __________           "
  # puts "  |          |  |          |  |       #{"?"}  | "
  # puts "  |__________|  |__________|  |          | "
  # puts "                              |          | "
  # puts "   __________    __________   | #{"New Card"} | "
  # puts "  |        #{player[0][1]} |  |       #{player[1][1]}  |  |          | "
  # puts "  |          |  |          |  |          | "
  # puts "  |          |  |          |  |__________|           "
  # puts "  |     #{player[0][0]}    |  |     #{player[1][0]}    |             "
  # puts "  |          |  |          |             "
  # puts "  |          |  |          |             "
  # puts "  |__________|  |__________|             "
  # puts "                                           "
end

def player_turn(user)
  prompt "#{user} Turn"
  prompt "ENTER 1) HIT   |   2) STAY"
  hit_or_stay = gets.chomp
end

def dealer_turn(total)
  total.sum >= 17
end

def add_to_total(total, card)
  total << card.flatten.sum unless card.flatten.include?(nil)
end

def hide_card(dealer_total)
  hidden_cards = []
  hide_count = dealer_total.size - 1

  hidden_cards << dealer_total.sample
  hide_count.times { hidden_cards << "?" }
  hidden_cards

end

def display_score(dealer_total, player_total)
  prompt " Dealer #{dealer_total} Player #{player_total}"
end

def calculate_two_cards_ace(card_total)
  ace_value = [11, 1]
  nil_count = card_total.select { |value| value.nil? }
  index = card_total.index(nil)

  if nil_count.count > 1
    2.times { |i| card_total[i] = ace_value[i] }
  else
    total = card_total.compact.sum
    if total > 10
      card_total[index] = 1
    elsif total <= 10 
      card_total[index] = 11
    end
  end
end

def calculate_single_card_ace(drawed_card, card_total)
  total = card_total.sum

  if total > 10
    card_total << 1
  elsif total <= 10 
    card_total << 11
  end
end

def calculate_bust(dealer_total, player_total)
  dealer = dealer_total.sum
  player = player_total.sum

  if player > 21
    prompt "Bust! Dealer Wins\n Dealers Cards #{dealer_total}"
    exit
  elsif dealer > 21
    prompt "Bust! Player Wins!\n Dealers Cards #{dealer_total}"
    exit
  end
end

def calculate_winner(dealer_total, player_total)
  dealer = dealer_total.sum
  player = player_total.sum

  if player <= 21 && player > dealer 
    prompt "Player Wins!!"
  elsif dealer <= 21 && dealer > player
    prompt "The Dealer Wins!!"
  else
    prompt "Its a Tie!"
  end
end

arr_suit = SUITS.keys
arr_face = SUITS.values
hit_or_stay = ""
draw_count = 4

dealer_total = []
player_total = []

dealer_cards = []
player_cards = []


prompt "Welcome to the game 21!"
prompt "Ready? Press (y) to Start"
#start = gets.chomp

loop do
  drawed_card = draw_card(arr_face, arr_suit, draw_count)
  dealer_cards, player_cards = split_deck(drawed_card) if draw_count == 4

  if draw_count == 4 
    dealer_total, player_total = convert_face_to_digit([dealer_cards,player_cards])
    calculate_two_cards_ace(player_total) if player_total.include?(nil)
    calculate_two_cards_ace(dealer_total) if dealer_total.include?(nil)
  else 
    card_total = convert_face_to_digit([drawed_card])
    calculate_single_card_ace(card_total, player_total) if card_total.flatten.include?(nil)
    add_to_total(player_total, card_total)
  end

  hidden_total = hide_card(dealer_total)
  display_deck(dealer_cards, player_cards)
  display_score(hidden_total, player_total)

  calculate_bust(dealer_total, player_total)
  hit_or_stay = player_turn("player")
  draw_count = 1
  break if hit_or_stay.include?("2")
end

loop do
  break if dealer_total.sum >= 17

  drawed_card = draw_card(arr_face, arr_suit, 1)
  card_total = convert_face_to_digit([drawed_card])
  add_to_total(dealer_total, card_total)
  hidden_total = hide_card(dealer_total)
  convert_ace(player_total, dealer_total)

  display_deck(dealer_cards, player_cards)
  display_score(hidden_total, player_total)
  calculate_bust(dealer_total, player_total)
end
puts
prompt "Dealers Cards #{dealer_total}"
calculate_winner(dealer_total, player_total)

