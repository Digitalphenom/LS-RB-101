require "yaml"
PROMPT = YAML.load File.read('rps_prompt.yml')

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

def prompt(message)
  Kernel.puts("=> #{message}")
end

def who_wins?(win, choice, cpu_choice)
  if win == true
    prompt("#{DIALOGUE[[choice, cpu_choice]]} (Win)")
  elsif win == false
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
    
    user_index = VALID_CHOICES.index(choice)
    cpu_choice = VALID_CHOICES.sample
    cpu_index = VALID_CHOICES.index(cpu_choice)
    
    Kernel.puts("=> Round #{round += 1}")
    Kernel.puts("=> You Chose: #{CHOICE[choice]} \n=> Computer Chose: #{CHOICE[cpu_choice]}")
      # (win against) grouped by index - ordered from VALID_CHOICES
      winners = [[2, 3], [0, 4], [1, 3], [1, 4], [0, 2]]
      win = winners[user_index].include?(cpu_index)
      win = nil if winners[user_index] == winners[cpu_index]
      
      if win == true
        user_count += 1
      elsif win == false
        cpu_count += 1
      end
      
      who_wins?(win, choice, cpu_choice)
      
      Kernel.puts("=> User: #{user_count} Computer: #{cpu_count}")
      break if round == 5
    end
    
    end_game_dialogue(user_count, cpu_count)
    prompt(PROMPT["end"])
    prompt(PROMPT["try_again?"])
  play_again = Kernel.gets().chomp().downcase

  if play_again.include?("y")
    round = 0
    user_count = 0
    cpu_count = 0
    next
  else
    break
  end
end
