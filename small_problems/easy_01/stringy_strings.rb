#2/16/2023
# this is a more succint solution to my previous ones.

def stringy(digit)
  array = (1..digit).to_a
  result = 
  array.map { |num| num.odd? ? "1" : "0" }
  result.join
end

# 12/18/2022
# redid this one. was able to solve it much faster.
def stringy(num)
  x = []
  num.times { |i| x << i+1}
  val = x.map do |num|
    if num % 2 == 1
      1
    else
      0
    end
  end
  val.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts

def stringy(num)
  collection = []
  count = 0
  loop do
    if count % 2 == 0
      collection << '1'
    else count % 2 == 1
      collection << '0'
    end
  count += 1
  break if count == num
  end
  collection.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# given a positive integer
# return a string of alternating 1's & 0's, always starting with 1.

# you need to be able to count each digit and assign each a value.
# 6 would be 1,2,3,4,5,6 assigning 1,0 accordingly.
# A loop can be used to iterate through the length of the argument number.
# use a count variable to punch in 1's and 0's into a collection based on whether the value in the iteration is even or odd.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
puts 

# given a positive integer and an optional argument set to 1
# return a string of alternating 1's & 0's 
# return a string of alternating 0's & 1's when the optional argument is set to 0


def stringy_two(num, order= 1)
  collection = []
  count = 0
  loop do
    if order == 1 && count % 2 == 0
      collection << '1'
    elsif order == 1 && count % 2 == 1
      collection << '0' 
    elsif order == 0 && count % 2 == 0
      collection << '0' 
    elsif order == 0 && count % 2 == 1
      collection << '1'
    end
  count += 1
  break if count == num
  end
  collection.join
end

puts stringy_two(6,0) == '101010'
puts stringy_two(9,0) == '101010101'
puts stringy_two(4,1) == '1010'
puts stringy_two(7,1) == '1010101'