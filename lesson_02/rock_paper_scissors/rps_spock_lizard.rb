VALID_CHOICES = ["r", "p", "s", "l", "sp"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

CHOICE = {  "r" => :ROCK,
            "p" => :PAPER,
            "s" => :SCISSORS,
            "l" => :LIZARD,
            "sp" => :SPOCK }

DIALOGUE = {  ["r", "s"] => :crushes,
              ["r", "l"] => :crushes,
              ["p", "r"] => :covers,
              ["p", "sp"] => :disproves,
              ["s", "p"] => :cuts,
              ["s", "l"] => :decapitates,
              ["l", "p"] => :eats,
              ["l", "sp"] => :poisons,
              ["sp", "r"] => :vaporizes,
              ["sp", "s"] => :smashes }

choice = ""
round = 0
user_count = 0
cpu_count = 0

prompt("Best Of 5 Rounds Ready?")
prompt("Take your pick")

loop do
  loop do
    prompt("r-Rock | p-Paper | s-Scisorrs | sp-Spock | l-Lizard")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end

  user_index = VALID_CHOICES.index(choice)
  cpu_choice = VALID_CHOICES.sample
  cpu_index = VALID_CHOICES.index(cpu_choice)

  Kernel.puts("=> Round #{round += 1}")
  Kernel.puts("=> You Chose: #{CHOICE[choice]}
=> Computer Chose: #{CHOICE[cpu_choice]}")
  # (win against) grouped by index - ordered from VALID_CHOICES
  winners = [[2, 3], [0, 4], [1, 3], [1, 4], [0, 2]]
  win = winners[user_index].include?(cpu_index)
  win = nil if winners[user_index] == winners[cpu_index]

  if win == true
    prompt("#{CHOICE[choice]} #{DIALOGUE[[choice, cpu_choice]]} #{CHOICE[cpu_choice]} (Win)")
  elsif win.nil?
    prompt("TIE Try Again")
  else
    prompt("#{CHOICE[cpu_choice]} #{DIALOGUE[[cpu_choice, choice]]} #{CHOICE[choice]} (Loss)")
  end

  if win == true
    user_count += 1
  elsif win == false
    cpu_count += 1
  end

  Kernel.puts("=> User: #{user_count} Computer: #{cpu_count}")
  break if round == 5
end
  if user_count > cpu_count
    prompt("You WON The Game!")
  elsif user_count < cpu_count
    prompt("Sorry You Loss The Game")
  else
    prompt("It's A Tie!")
 end
  prompt("Thank you for playing!")
