
def featured(digit)
  count = 0
  until count > digit && count.odd? && count % 7 == 0
    p count += 7
  end
   count
end

#featured(12) == 21
#featured(20) == 21
#featured(21) == 35
#featured(997) == 1029
#featured(1029) == 1043
featured(999_999) == 1_023_547
#featured(999_999_987) == 1_023_456_987

#featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# take a digit
# return the *next featured number that is greater than passed in digit
# a featured number is an odd number that is a multiple of 7, and its digits occurs once. => 12 next featured num is 21 (7+7+7) = 21

# add the number 7 successively until it is greater than digit && is odd