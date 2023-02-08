require "yaml"
require "pry"
PROMPT = YAML.load_file('rps_prompt.yml')

VALID_CHOICES = ["r", "p", "s", "l", "sp"]

choice = ""
round = 0
user_count = 0
cpu_count = 0

CHOICE = {  "r" => :ROCK,
  "p" => :PAPER,
  "s" => :SCISSORS,
  "l" => :LIZARD,
  "sp" => :SPOCK }
  
  DIALOGUE = {  ["r", "s"] => "ROCK crushes SCISSORS",
    ["r", "l"] => "ROCK crushes LIZARD",
    ["p", "r"] => "PAPER covers ROCK",
    ["p", "sp"] => "PAPER disproves SPOCK",
    ["s", "p"] => "SCISSORS cuts PAPER",
    ["s", "l"] => "SCISSORS decapitates LIZARD",
    ["l", "p"] => "LIZARD eats PAPER",
    ["l", "sp"] => "LIZARD poisons SPOCK",
    ["sp", "r"] => "SPOCK vaporizes ROCK",
    ["sp", "s"] => "SPOCK smashes SCISSORS" }
    
    WINNERS =  {
      [:ROCK, :SCISSORS] => :ROCK,
      [:SCISSORS, :PAPER] => :SCISSORS,
      [:PAPER, :ROCK] => :PAPER,
      [:ROCK, :LIZARD] => :ROCK,
      [:LIZARD, :SPOCK] => :LIZARD,
      [:SPOCK, :SCISSORS] => :SPOCK,
      [:SCISSORS, :LIZARD] => :SCISSORS,
      [:LIZARD, :PAPER] => :LIZARD,
      [:PAPER, :SPOCK] => :PAPER,
      [:SPOCK, :ROCK] => :SPOCK
    }

  def prompt(message)
    puts "=> #{message}"
  end
  
  def who_wins?(winner, choice, cpu_choice)
  
    if winner == CHOICE[choice]
      prompt("#{DIALOGUE[[choice, cpu_choice]]} (Win)")
    elsif winner == CHOICE[cpu_choice]
      prompt("#{DIALOGUE[[cpu_choice, choice]]} (Loss)")
    else
      prompt(PROMPT["tie"])
  end
end

def end_game_dialogue(user_count, cpu_count)
  if user_count > cpu_count
    prompt(PROMPT["win"])
  elsif user_count < cpu_count
    prompt(PROMPT["lose"])
  else
    prompt(PROMPT["tie"])
  end
end

loop do
  prompt(PROMPT["welcome"])
  prompt(PROMPT["pick"])
  loop do
    loop do
      prompt(PROMPT["options"])
      choice = Kernel.gets().chomp()
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt(PROMPT["invalid"])
      end
    end

    win_check = []
    cpu_choice = VALID_CHOICES.sample
    win_check << CHOICE[choice]
    win_check << CHOICE[cpu_choice]
    
    puts "=> Round #{round += 1}"
    puts "=> You Chose: #{CHOICE[choice]}"
    puts "=> Computer Chose: #{CHOICE[cpu_choice]}"

    winner = WINNERS[win_check] || winner = WINNERS[win_check.reverse]

    user_count += 1 if winner == CHOICE[choice]
    cpu_count += 1 if winner == CHOICE[cpu_choice]

    who_wins?(winner, choice, cpu_choice)

    puts "=> User: #{user_count} Computer: #{cpu_count}"
    break if round == 5
  end

  end_game_dialogue(user_count, cpu_count)
  prompt(PROMPT["end"])
  prompt(PROMPT["try_again?"])
  play_again = gets.chomp.downcase

  if play_again.include?("y")
    round = 0
    user_count = 0
    cpu_count = 0
    next
  else
    break
  end
end
