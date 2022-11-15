teddy_age = rand(20..200)

puts "Hey there, enter your name please:"
loop do
  name = gets.chomp
  if name.match?(/[A-Za-z]/)
    puts "Today, #{name} is #{teddy_age} years old!"
    break
  elsif name.empty? || name.include?(" ")
    puts "Today, Teddy is #{teddy_age} years old!"
    break
    puts "Use the alphabets please!"
    puts "Try again"
    next
  else
  end
end