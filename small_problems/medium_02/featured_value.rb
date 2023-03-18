# take a single number and return the next (featured number) that is greater than number

# stategy 
# loop through multiples of 7 break until i is greater than argument.

# this problems solve by creating a criteria for incrementing
#   the first is whether the count is greater than the argument
#   the second is whether the count is odd
#   the third is whether the count does not include duplicate values.
# until these criteria are met, we keep incrementing.

def even_values?(num)
  arr = num.digits
  result = true
  arr = %w(1 2 3 4 5 5)
  arr.each { |num| result = false if arr.count(num) > 1 }
  result
end

def featured(num)
  i = 7
  until i > num && i.odd? && even_values?(i)
    i += 7
  end
  i
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

#featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
