# Write a method that:

# 1) squares the sum of the first n positive integers
  # a) => (1 + 2 + 3)**2 = 36
# 2) sums the squares of the first n positive integers.
  # b) => (1**2 + 2**2 + 3**2) = 14
# 3) computes the difference
  # c) => 36 - 14 = 22

  def sum_square_difference(num)
    array = (1..num).to_a
    square_of_sum = array.inject(:+) **2
    sum_of_square = array.map { |num| num**2}.sum

    square_of_sum - sum_of_square
  end
  
  p sum_square_difference(3)
  p sum_square_difference(10) == 2640
  p sum_square_difference(1) == 0
  p sum_square_difference(100) == 25164150