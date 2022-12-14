require "yaml"
require "pry"

MESSAGES = YAML.load_file('messages.yml')

SUITS = {
  'D' => '♦',
  'S' => '♠',
  'H' => '♥',
  'C' => '♣',
}

FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A',].map do |val| val.split * 4
end

FACES.flatten!.shuffle!

player_total = []
dealer_total = []

player_suit = {}
player_face = {}

dealer_suit = {}
dealer_face = {}

def prompt(str)
  puts "=> #{str}"
end

def generate_player_values(player_suit, player_face, player_stash)
    (1..2).each { |num| player_suit[num] = SUITS.values.sample }
    (1..2).each { |num| player_face[num] = FACES.sample }
    player_stash << player_face.values_at(1, 2)
    player_total = player_stash.map do |deck|
      deck.map do |value|
        deck = value.to_i 
        if deck.zero?
          deck = 10
        else
          deck
        end
      end
    end
    player_total
  end

  def generate_dealer_values(dealer_suit, dealer_face, dealer_stash)
    (1..2).each { |num| dealer_suit[num] = SUITS.values.sample }
    (1..2).each { |num| dealer_face[num] = FACES.sample }
    dealer_stash << dealer_face.values_at(1, 2)

    dealer_total = dealer_stash.map do |deck|
      deck.map do |value|
        deck = value.to_i 
        if deck.zero?
          deck = 10
        else
          deck
        end
      end
    end
    dealer_total
  end

  def display_deck(ps, pf, ds, df)
    system "clear"
    prompt "You're Bottom. Dealer is Top"
    puts "   __________    __________              "
    puts "  |       #{df[1]}  |  |        #{" "} |             "
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
start = gets.chomp

player_total = generate_player_values(player_suit, player_face, player_total)
dealer_total = generate_dealer_values(dealer_suit, dealer_face, dealer_total)
display_deck(player_suit, player_face, dealer_suit, dealer_face)
display_score(dealer_total, player_total)

loop do
  # Player Turn
  hit_or_stay = player_turn()

  if hit_or_stay.include?("1")
    player_total = generate_player_values(player_suit, player_face, player_total)
    display_deck(player_suit, player_face, dealer_suit, dealer_face)
    display_score(dealer_total, player_total)
    next
      if player_total == 21
        winner()
      elsif player_total > 21
        busted()
      end
  end
  loop do
    # Dealer Turn
    dealer_turn()
    dealer_total = generate_dealer_values(dealer_suit, dealer_face, dealer_total)
    display_deck(player_suit, player_face, dealer_suit, dealer_face)
    display_score(dealer_total, player_total)
    if dealer_total.flatten.sum <= 17
      next
    elsif dealer_total.flatten.sum > 17
      break
    end
    break
  end
end
