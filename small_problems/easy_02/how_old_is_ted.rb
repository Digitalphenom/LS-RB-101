teddy_age = rand(20..200)

puts "Hey there, enter your name please:"
loop do
  name = gets.chomp
  case 
  when name.match?(/[A-Za-z]/)
    puts "Today, #{name} is #{teddy_age} years old!"
    break
  when name.empty? || name.include?(" ")
    puts "Use the alphabets please!"
    puts "Try again"
  else
    puts "errrr try again"
  end
end