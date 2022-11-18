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
