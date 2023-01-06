
def sequence(num)
  num = num - num - num if num.negative?
  p (1..num).to_a
end

sequence(-5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]