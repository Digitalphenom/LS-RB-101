VALID_CHOICES = ["r", "p", "s", "l", "sp"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

CHOICE = {  "r" => :Rock,
            "p" => :Paper,
            "s" => :Scissors,
            "l" => :Lizard,
            "sp" => :Spock }

choice = ""
round = 0
loop do
  loop do
    operator_prompt = <<~MSG
    What do you choose?
    R-Rock | P-Paper | S-Scisorrs | SP-Spock | L-Lizard
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
  Kernel.puts("You chose: #{CHOICE[choice]}
  computer chose:#{CHOICE[cpu_choice]}")
  user_index = VALID_CHOICES.index(choice)

  winning_combinations = [[2, 3], [0, 4], [1, 3], [1, 4], [0, 2]]
  win = winning_combinations[user_index].include?(cpu_index)
  tie = winning_combinations[user_index] == winning_combinations[cpu_index]

  if win == true
    prompt("You WIN!!")
  elsif tie == true
    prompt("TIE try again")
  else
    prompt("You Lose..")
  end
  
  prompt("Do you want to play again??")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end
prompt("Thank you for playing!")
