
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with elements inserted into an array alternating from array1 then array2 then array1 and so on upto the size of array

# Explicit Requirements
# Input: Array
# Output: Array
# elements will be inserted into a new array in alternate order
# array1 goes first, array2 goes second
# arrays passed to method will be non empty and contain the same number of elements

# Implicit Requirements
# the new array size should equal the total size of both arrays passed to method
# 

# Test Cases
# [1, 'a', 2, 'b', 3, 'c']

# Data Strucuture
# on first iteration:
# arr1 & arr2 will insert value at index position 0
# => [1,2,3] => [1]
# => ["a","b","c"] => [1, "a"]

# on second iteration:
# arr1 & arr2 will insert value at index position 1
# => [1,2,3] => [1, "a", 2]
# => ["a","b","c"] => [1, "a", 2, "b"]

# on third iteration:
# => [1,2,3] => [1, "a", 2, "b", 3]
# => ["a","b","c"] => [1, "a", 2, "b", 3, "c"]

# Algorithm
# access arr1 & arr2 first value and place it into new array
# continue this process until new array is equal to the size of arr1 & arr2
# return new array

def interleave(arr1, arr2)
  result = []

  (0...arr1.size).each do |i|
    result << arr1[i] << arr2[i]
  end
  result
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# alternative solution

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

