def running_total(digits)
  total = 0
  arr = []
  count = 0

  loop do
    return arr if digits.empty?
    total += digits[count]
    arr << total
    count += 1
    break if count == digits.length
  end

   arr
end

p running_total([2, 5, 13]) 
p running_total([14, 11, 7, 15, 20]) 
p running_total([3])
p running_total([]) 

# pass in an array of numbers
# iterate through digits and add the right with the left
# add the result to a new array
# do this for each value in the array
# return the total

