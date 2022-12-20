def prompt(enter)
  Kernel.puts("=>#{enter}")
end
total = []
num_collection = ["1st","2nd","3rd","4th","5th"]

num_collection.each do |num|
  prompt("Enter the #{num} number:")
  numbers = gets.chomp.to_i
  total << numbers
end
prompt("Enter the last number:")
final_num = gets.chomp.to_i

if total.include?(final_num)
  prompt("The number #{final_num} appears in #{total}.")
else
  prompt("The number #{final_num} is not included in #{total}.")
end

#---------------------------
# 12/20/22 alternate approach

def assign_ordinal(num)
  num = num.to_s
  case num
  when "1" ; num << "st"
  when "2" ; num << "nd"
  when "3" ; num << "rd"
  else     ; num << "th"
  end
end

num = 0 
arr = []

until arr.count == 5
  num += 1
  puts "Enter the #{assign_ordinal(num)} number:"
  answer = gets.chomp
  arr << answer
end

puts "Enter the last number:"
last_num = gets.chomp

sixth_num = arr.include?(last_num) ? last_num << " appears" : last_num << " does not appear"
arr = arr.map { |num| num.to_i }

puts "The number #{sixth_num} in #{arr}"