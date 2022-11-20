
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

