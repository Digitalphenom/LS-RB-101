#require "yaml"
require "pry"

#MESSAGES = YAML.load_file('messages.yml')

SUITS = {
  '♦' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'],
  '♠' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'],
  '♥' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'],
  '♣' => ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
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

def display_deck(dealer, player)
  system "clear"
  prompt "You're Bottom. Dealer is Top"

  puts "   __________    __________              "
  puts "  |       #{dealer[0][1]}  |  |          |             "
  puts "  |          |  |          |             "
  puts "  |          |  |          |             "
  puts "  |     #{dealer[0][0]}    |  |     #{"?"}    |             "
  puts "  |          |  |          |   __________           "
  puts "  |          |  |          |  |       #{"?"}  | "
  puts "  |__________|  |__________|  |          | "
  puts "                              |          | "
  puts "   __________    __________   | #{"New Card"} | "
  puts "  |        #{player[0][1]} |  |       #{player[1][1]}  |  |          | "
  puts "  |          |  |          |  |          | "
  puts "  |          |  |          |  |__________|           "
  puts "  |     #{player[0][0]}    |  |     #{player[1][0]}    |             "
  puts "  |          |  |          |             "
  puts "  |          |  |          |             "
  puts "  |__________|  |__________|             "
  puts "                                           "
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
  total << card.flatten.sum
end

def display_score(dealer_total, player_total)
  prompt " Dealer #{dealer_total} Player #{player_total}"
end

def busted?(player_total, dealer_total)
  player_total.sum > 21
end

def calculate_bust(dealer_total, player_total)
  dealer = dealer_total.sum
  player = player_total.sum

  if player > 21
    puts "Bust! Dealer Wins"
    exit
  elsif dealer > 21
    puts "Bust! Player Wins!"
    exit
  end
end


def calculate_winner(dealer_total, player_total)
  dealer = dealer_total.sum
  player = player_total.sum

  if player <= 21 && player > dealer 
    puts "Player Wins"
  elsif dealer <= 21 && dealer > player
    puts "The Dealer Wins!"
  else
    puts "Its a Tie!"
  end
end
# Start Game
prompt "Welcome to the game 21!"
prompt "Ready? Press (y) to Start"
#start = gets.chomp
  #---------------------------------------------------------------
  # initialize cards 
arr_suit = SUITS.keys
arr_face = SUITS.values
hit_or_stay = ""
draw_count = 4

arr = draw_card(arr_face, arr_suit, 4)
dealer_cards, player_cards = split_deck(arr)
dealer_total, player_total = convert_face_to_digit([dealer_cards,player_cards])

display_deck(dealer_cards, player_cards)
display_score(dealer_total, player_total)
#---------------------------------------------------------------
# begin game
loop do
  break if hit_or_stay.include?("2") || busted?(player_total, dealer_total)
  hit_or_stay = player_turn("player")
  drawed_card = draw_card(arr_face, arr_suit, 1)
  card_value = convert_face_to_digit([drawed_card])
  add_to_total(player_total, card_value)
  display_deck(dealer_cards, player_cards)
  display_score(dealer_total, player_total)
end
calculate_bust(dealer_total, player_total)
#---------------------------------------------------------------
loop do
  break if dealer_turn(dealer_total) || busted?(player_total, dealer_total)
  drawed_card = draw_card(arr_face, arr_suit, 1)
  card_value = convert_face_to_digit([drawed_card])
  add_to_total(dealer_total, card_value)
  display_deck(dealer_cards, player_cards)
  display_score(dealer_total, player_total)
end
calculate_bust(dealer_total, player_total)
calculate_winner(dealer_total, player_total)

  #-------------------------------------------------------------




  # ------------------------------------------------------------

    #if player_total.flatten.sum >= 21
    #  winner()
    #  break
    #elsif player_total.flatten.sum >= 21
    #  busted()
    #  break
    #end

# loop do
#     # Dealer Turn
#     dealer_turn()
#     dealer_total = generate_values(dealer_suit, dealer_face, dealer_total)
#     display_deck(player_suit, player_face, dealer_suit, dealer_face, # player_total, dealer_total)
#     display_score(dealer_total, player_total)
#     if dealer_total.flatten.sum <= 17
#       next
#     elsif dealer_total.flatten.sum > 17
#       break
#     end
#     break
#   end
# end


