
def sequence(count, digit)
  current = 0
  
  arr = (1..count).each_with_object([]) do |i, arr|
    current += digit
    arr << current
  end
  arr
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []


#-----------(aditional solutions)---------------

def sequence(count, starter)
  arr = []
  1.upto(count) { |n| arr << n * starter }
  arr
end

# GIVEN SOLUTION
def sequence(count, first)
  (1..count).map { |value| value * first }
end