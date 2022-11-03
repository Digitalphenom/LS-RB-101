VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(choice, computer_choice)
  if choice == "rock" && computer_choice == "scissors" ||
    (choice == "paper" && computer_choice == "rock") ||
    (choice == "scissors" && computer_choice == "paper")
    prompt("You WIN!!")
  elsif choice == "scissors" && computer_choice == "rock" ||
    (choice == "rock" && computer_choice == "paper") ||
    (choice == "paper" && computer_choice == "scissors")
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
