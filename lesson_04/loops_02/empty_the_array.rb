names = ['Sally', 'Joe', 'Lisa', 'Henry', 'Sedrick', 'Josh']
 
loop do
  puts names.shift
  break if names.empty?
end
p names

# given an array of string, remove one per loop and print it to the screen.
# do this for the remainder of the values in the array.
# break the loop once there are no more values to remove.


# initialize a count variable with a value equal to the size of the array.
#initiate loop
#for every iteration remove one one index value starting from the end of array.
# print the removed value to the screen.
# repeat this process until the array is empty.

# how to determine when to break out of loop?
# if the size of the array is == to 0 break out of loop.
