
def average(num)
  # if desired output is a float => num = num.map {|x| x.to_f}
  sum = 0
  count = 0
  loop do
    sum += num[count]
    count += 1
    break if count == num.size
  end
  sum / num.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# to get a mean value, add up all values and divide sum
#  by total number of values.

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end