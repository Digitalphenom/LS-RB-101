def show_multiplicative_average(digit)
  multiply = digit.inject(1) do |acc, num|
    acc * num
  end
  divide = multiply.to_f / digit.length
  puts sprintf("%.3f", divide)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# take a integer
# return the result of:
#   multiply all digits
#     -iterate through array of digits. multiply self with next number then store result in an accumulator.
#   divide by number of entries in array
#   round to 3 decimal places




