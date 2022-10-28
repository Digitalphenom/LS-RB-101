#Given a collection of integers.

#Iterate through the collection one by one.
# - save the first value as the starting value.
# - for each iteration, compare the daved value with the current value.
# - if the current value is greater, or its the same
#  - move to the next value in the collection
# - otherwise, if the current value is greater
#  - reassign the saved value as the current value

# After iterating through the collection, return the saved value.

def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end
  
    saved_number
end
val = [2,5,8,4,6]
p find_greatest(val)