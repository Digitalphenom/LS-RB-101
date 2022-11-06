VALID_CHOICES = ["r", "p", "s", "l", "sp"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

CHOICE = {  "r" => :ROCK,
            "p" => :PAPER,
            "s" => :SCISSORS,
            "l" => :LIZARD,
            "sp" => :SPOCK }

choice = ""
round = 0
user_count = 0
cpu_count = 0

prompt("Best Of 5 Rounds Ready?")
prompt("Take your pick")
loop do
  loop do
    operator_prompt = <<~MSG
    r-Rock | p-Paper | s-Scisorrs | sp-Spock | l-Lizard
    MSG
    prompt(operator_prompt)
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end
  cpu_choice = VALID_CHOICES.sample
  cpu_index = VALID_CHOICES.index(cpu_choice)

  Kernel.puts("You Chose: #{CHOICE[choice]}
Computer Chose: #{CHOICE[cpu_choice]}")

  user_index = VALID_CHOICES.index(choice)
  winners = [[2, 3], [0, 4], [1, 3], [1, 4], [0, 2]]
  win = winners[user_index].include?(cpu_index)
  win = nil if winners[user_index] == winners[cpu_index]
  if win == true
    prompt("You WIN!!")
  elsif win.nil?
    prompt("TIE Try Again")
  else
    prompt("You Loose")
  end

  if win == true
    user_count += 1
  elsif win == false
    cpu_count += 1
  end

  Kernel.puts("=> Round #{round += 1}")
  Kernel.puts("=> User: #{user_count} Computer: #{cpu_count}")
  if round == 5
    break
  else
    next
  end
end
prompt("Thank you for playing!")
