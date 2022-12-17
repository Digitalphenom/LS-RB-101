require "pry"

def prompt(str)
  puts "=>#{str}"
end

prompt "What is your total bill?"
total = gets.chomp.to_f
prompt " What tip percentage would you like to give?"
prompt "1) 10%  2) 15%  3) 25%  4) 30%  5) CUSTOM "
tip_amount = gets.chomp

if tip_amount.include?("5")
  prompt "Enter your custom percentage"
  tip_amount = gets.chomp.to_f
  tip_amount = total * tip_amount / 100
end

case tip_amount
when "1"
  tip_amount = total * 0.10 
when "2"
  tip_amount = total * 0.15 
when "3"
  tip_amount = total * 0.25
when "4"
  tip_amount = total * 0.30
end

new_total = tip_amount + total
prompt "The tip is $#{sprintf("%.2f",tip_amount)}"
prompt "Your new total is $#{sprintf("%.2f", new_total)}"
