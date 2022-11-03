VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
end
def win?(first, second)
  first == "rock" && second == "scissors" ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
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
    prompt("Choose one: rock, paper, scissors")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose: #{choice} computer chose: #{computer_choice}")
  puts display_results(choice, computer_choice)
  prompt("Do you want to play again??")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for playing!")
