
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

# revised 2/17\23
# a simpler way is to use #inject
digit = 5
(1..digit).inject { |sum, n| sum + n}
# or even simpler 
(1..digit).inject(:+)
(1..digit).inject(:*)




