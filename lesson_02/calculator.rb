# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() !=0
end

prompt("Welcome to Calculator!")
name = prompt("Enter your name")
name = Kernel.gets().chomp()
prompt("Welcome #{name}")

loop do  
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

loop do

  number1 = 0
  loop do
    prompt("Pick your first number")
    number1 = Kernel.gets().chomp()
    
    if valid_number?(number1)
      break
    else
      prompt("are you sure you entered a valid number?")
   end
  end
  
  number2 = 0
  loop do
    prompt("Pick your second number")
    number2  = Kernel.gets().chomp()
    
    if valid_number?(number2)
      break
    else
      prompt("are you sure you entered a valid number?")
    end
  end
  
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)

  operator = 0
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3 or 4")
  end
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("#{operation_to_message(operator)} the two numbers....")

  result = case operator
  when "1"
    result = number1.to_i() + number2.to_i()
  when "2"
    result = number1.to_i() - number2.to_i()
  when "3"
    result = number1.to_i() * number2.to_i()
  else
    result = number1.to_f() / number2.to_f()  
  end

  prompt("The result is #{result}")
  
  prompt("Do you want to perform another calculation? (Y to calculate again)")

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

  