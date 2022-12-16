
def multisum(digit)
  multiples = 0

  (1..digit).each do |value|
     if value % 3 == 0 || value % 5 == 0
      multiples += value
     end
  end
  multiples
end

# set a variable to 0
# take passed in digit and set it to begin at 1 through digit
# iterate through digit range and use test condition modulo 3 & 5 == 0
# append values to multiples
# return multiples

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168