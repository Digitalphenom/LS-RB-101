require "pry"
require "date"

def prompt(str)
  puts "=>  #{str}"
end

prompt "What is your age?"
age = gets.chomp
prompt "At what age would you like to retire?"
r_age = gets.chomp

today = Date.today
years_left = r_age.to_i - age.to_i
r_year = today.year + years_left

prompt "It's #{today.year}. You will retire in #{r_year.to_i}."
prompt "You have only #{years_left} years of work to go!"
