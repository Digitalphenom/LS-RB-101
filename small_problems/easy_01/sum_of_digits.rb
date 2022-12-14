
def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Integer#digits returns an array of base-radix digits of self.
# I dont know what that means but it appears to return all digits passed in.
# It looks like it returns the digits in reverse form. 
#496 => [6,9,4]
#123456 => [6,5,4,3,2,1]

# LS solution is a more manual way to approach the problem.

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end



