puts "Enter a positive integer greater than 0"
num = gets.chomp.to_i

def product_of(num)
  (1..num).inject(1) do |accumulator, num|
    accumulator * num
  end
end

puts "The product of 1 and #{num} is #{product_of(num)}"

# The inject or reduce method works by keeping count of an accumulator number that calculates the calculation within a collection and a current value.

# The inject methods keeps a running count of previous calculations in the form of an accumulator. It takes an argument whereby you set the starting count. and keeps a current count.