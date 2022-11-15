def multiply(x, z)
  x * z
end

p multiply(5, 3) == 15
p multiply(10, 3) == 30
# it looks like when an array is entered as the first value, the right hand operator appends the array element x amount of times.
p multiply([10], 3)
# => [10, 10, 10]
p multiply([10], 3)
# => [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

