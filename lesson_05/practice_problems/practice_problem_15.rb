# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# GOAL
# return an array containing only the hashes that contain values that are even

# STRATEGY
# access each inner hash, access each value, determine if all elements in a given hash are even, if so extract to new collection, else ignore.

# access each value in array and check if any of them are odd or any look for all odd ints

result = 
arr.select do |inner_hsh|
  inner_hsh.all? do |key, array|
    array.all? {|int| int.even?}
  end
end

# If all of the integers in an inner array are even then the inner block returns true to the innermost call to all?. If all of the inner blocks for a particular hash return true then the middle block returns true to the outer call to all? which in turn causes the outer block to return true to the select method for that iteration.

p result

