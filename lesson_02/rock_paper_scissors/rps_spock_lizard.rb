VALID_CHOICES = ["r", "p", "s", "sp", "l"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

CHOICE = { "p" => :Paper, "r" => :Rock,
        "s" => :Scissors, "sp" => :Spock, "l" => :Lizard }

def win?(first, second)
  first == "r" && (second == "l" || second == "s") ||
    first == "p" && (second == "sp" || second == "r") ||
    first == "s" && (second == "l" || second == "p") ||
    first == "sp" && (second == "r" || second == "s") ||
    first == "l" && (second == "p" || second == "sp")
end

def display_results(first, second)
  if win?(first, second)
    prompt("You WIN!!")
  elsif win?(second, first)
    prompt("You Lose..")
  else
    prompt("TIE try again")
  end
end

choice = ""

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
  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose: #{CHOICE[choice]} computer chose:#{CHOICE[choice]}")

  puts display_results(choice, computer_choice)
  prompt("Do you want to play again??")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end
prompt("Thank you for playing!")
