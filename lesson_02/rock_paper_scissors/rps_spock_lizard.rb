require "yaml"
require "pry"
PROMPT = YAML.load_file('rps_prompt.yml')

VALID_CHOICES = ["r", "p", "s", "l", "sp"]

choice = ""
round = 0
user_count = [0]
cpu_count = [0]
options = []

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

WINNERS =  {  [:ROCK, :SCISSORS] => :ROCK,
              [:ROCK, :LIZARD] => :ROCK,
              [:SCISSORS, :PAPER] => :SCISSORS,
              [:SCISSORS, :LIZARD] => :SCISSORS,
              [:PAPER, :ROCK] => :PAPER,
              [:PAPER, :SPOCK] => :PAPER,
              [:LIZARD, :SPOCK] => :LIZARD,
              [:LIZARD, :PAPER] => :LIZARD,
              [:SPOCK, :SCISSORS] => :SPOCK,
              [:SPOCK, :ROCK] => :SPOCK }

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system("clear")
end
clear_screen()

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
  compare = user_count[0] <=> cpu_count[0]
  result = case compare
           when 1
             "win"
           when -1
             "lose"
           else
             "tie"
           end
  prompt(PROMPT[result])
end

def user_cpu_choice(cpu_choice, choice, options)
  options << CHOICE[choice] << CHOICE[cpu_choice]
end

def valid_option?(choice)
  VALID_CHOICES.include?(choice) ? true : prompt(PROMPT["invalid"])
end

def increment_count(count)
  count[0] += 1
end

loop do
  prompt(PROMPT["welcome"])
  prompt(PROMPT["pick"])
  loop do
    loop do
      prompt(PROMPT["options"])
      choice = gets.chomp
      break if valid_option?(choice) == true
    end

    cpu_choice = VALID_CHOICES.sample
    win_check = user_cpu_choice(cpu_choice, choice, options)

    prompt("Round #{round += 1}")
    prompt("You Chose: #{CHOICE[choice]}")
    prompt("Computer Chose: #{CHOICE[cpu_choice]}")

    winner = WINNERS[win_check] || WINNERS[win_check.reverse]

    increment_count(user_count) if winner == CHOICE[choice]
    increment_count(cpu_count) if winner == CHOICE[cpu_choice]

    who_wins?(winner, choice, cpu_choice)

    prompt("User: #{user_count[0]} Computer: #{cpu_count[0]}")
    options = []

    break if user_count[0] == 3 || cpu_count[0] == 3
  end

  end_game_dialogue(user_count, cpu_count)
  prompt(PROMPT["end"])
  prompt(PROMPT["try_again?"])
  play_again = gets.chomp.downcase
  round, user_count, cpu_count = play_again.include?("y") ? [0, [0], [0]] : break
  clear_screen()
end
