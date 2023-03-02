# take an array on integers
# return the average of the set

# * Do Not Use #sum- solve iteratively

#  STRATEGY
# iterate through integer values and add them together using inject, divide the result by array.size

def average(arr)
  arr.inject(&:+) / arr.size
end

p average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
p average([1, 5, 87, 45, 8, 8]) == 25
p average([9, 47, 23, 95, 16, 52]) == 40