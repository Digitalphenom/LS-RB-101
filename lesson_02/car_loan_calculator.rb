require 'yaml'
require 'pry'

INPUT = YAML.load_file("cl_prompt.yml")

def prompt(input)
  Kernel.puts("=> #{input}")
end

def valid_number?(num)
  if num.empty?() || num.match(/\D/)
    prompt(INPUT["valid_number?"])
  else
    num.to_i
  end
end

loan_amount = 0
prompt(INPUT["welcome"])
loop do
  prompt(INPUT["pick_la"])
  loan_amount = Kernel.gets().chomp()
  if valid_number?(loan_amount)
    break
  end
end

interest_rate = 0
loop do
  prompt(INPUT["pick_apr"])
  interest_rate = Kernel.gets().chomp()
  if valid_number?(interest_rate)
    break
  end
end

years = 0
months = 0
prompt(INPUT["pick_ld"])
loop do
  prompt(INPUT["years"])
  years = Kernel.gets().chomp()

  if valid_number?(years)
    break
  end
end

annual_interest_rate = interest_rate.to_f() / 100
monthly_interest_rate = annual_interest_rate / 12
months =  years.to_i() * 12

monthly_payment = loan_amount.to_f() *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate)**(-months)))

prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")