
def product(number)
  total = 1
  1.upto(number) {|x| total *= x }
  total  
end

puts "=> Enter an integer greater than 0: "
n = gets.chomp.to_i
puts "=> Enter 's' to compute the sum, 'p' to compute the product."

option = gets.chomp

if option == "s"
  puts "=> The product of the integers between 1 and #{n} is #{(n *(n + 1))/2}"
elsif option == "p"
  puts "=> The product of the integers between 1 and #{n} is #{product(n)}"
end



