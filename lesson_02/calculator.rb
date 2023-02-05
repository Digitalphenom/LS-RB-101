# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)
require 'yaml'
require 'pry'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number_conversion(num)
  if num.match?(/[.]/)
    num.to_f
  elsif num.match?(/\d/)
    num.to_i
  end
end

prompt(MESSAGES["welcome"])

loop do
  name = prompt("Enter your name")
  name = Kernel.gets.chomp
  if name.empty? || name.match?(/\d|\W/)
    prompt(MESSAGES["valid_name"])
  else
    prompt("Welcome #{name}")
    break
  end
end

loop do
  number1 = 0
  loop do
    prompt(MESSAGES["pick_num"])
    number1 = Kernel.gets.chomp

    if number1.count(".") > 1 || number1.match?(/\D/)
      prompt(MESSAGES["valid_num"])
    elsif number_conversion(number1)
      break
    end
  end
  
  number2 = 0
  loop do
    prompt(MESSAGES["pick_num_two"])
    number2 = Kernel.gets.chomp

    if number1.count(".") > 1 || number1.match?(/\D/)
      prompt(MESSAGES["valid_num"])
    elsif number_conversion(number2)
      break
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
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    elsif operator.empty? || operator.match?(/\d|\W/)
      prompt(MESSAGES["wrong_num"])
    end
  end

  def operation_to_message(op)
    result = { "1" => "Adding",
               "2" => "Subtracting",
               "3" => "Multiplying",
               "4" => "Dividing" }
    result[op]
  end

  prompt("#{operation_to_message(operator)} the two numbers..")

    case operator
    when "1"
      result = number_conversion(number1) + number_conversion(number2)
    when "2"
      result = number_conversion(number1) - number_conversion(number2)
    when "3"
      result = number_conversion(number1) * number_conversion(number2)
    when "4"
      result = number_conversion(number1) / number_conversion(number2)
    end

  prompt("The result is #{result}")
  prompt(MESSAGES["try_again?"])
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?("y")
end
