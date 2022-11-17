def prompt(enter)
  Kernel.puts("=>#{enter}")
end
total = []
num_collection = {
  :number_one => "1st",
  :number_two => "2nd",
  :number_three => "3rd",
  :number_four => "4th",
  :number_five => "5th"
}

num_collection.each do |_, val|
  prompt("Enter the #{val} number:")
  numbers = gets.chomp.to_i
  total << numbers
end
prompt("Enter the last number:")
final_num = gets.chomp.to_i

total.each do |num|
  if final_num == num
    prompt("The number #{final_num} appears in #{total}.")
    break
  else
    prompt("The number #{final_num} is not included in #{total}.")
    break
  end
end

