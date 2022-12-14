# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num.match(/[.]/)
    num.to_f()
  elsif num.match(/\d/)
    num.to_i()
   end
end

prompt(MESSAGES["welcome"])
name = prompt("Enter your name")
name = Kernel.gets().chomp()
prompt("Welcome #{name}")

loop do
  if name.empty?()
    prompt(MESSAGES["valid_name"])
  else
    break
  end
end

loop do
  number1 = 0
  loop do
    prompt(MESSAGES["pick_num"])
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt(MESSAGES["valid_num"])
    end
  end
  number2 = 0
  loop do
    prompt(MESSAGES["pick_num_two"])
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt(MESSAGES["valid_num"])
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  MSG
  prompt(operator_prompt)
  operator = 0
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES["wrong_num"])
    end
  end
  def operation_to_message(op)
    result = case op
    when "1"
      "Adding"
    when "2"
      "Subtracting"
    when "3"
      "Multiplying"
    when "4"
      "Dividing"
    end
    result
  end

  prompt("#{operation_to_message(operator)}the two numbers..")
    case operator
    when "1"
      result = valid_number?(number1) + valid_number?(number2)
    when "2"
      result = valid_number?(number1) - valid_number?(number2)
    when "3"
      result = valid_number?(number1) * valid_number?(number2)
    when "4"
      result = valid_number?(number1) / valid_number?(number2)
    end
  prompt("The result is #{result}")
  prompt(MESSAGES["try_again?"])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end
