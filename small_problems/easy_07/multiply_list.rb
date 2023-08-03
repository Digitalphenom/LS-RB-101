# P:
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Explicit Requirements
# Input: Array
# Output: Array
# Return new array
# must multiply integers in the same index position
# array arguments will always be equal in size 

# Notes
# the product is a value that is the result of multiply two or more digits

# E:
# [3, 5, 7], [9, 10, 11] => [27, 50, 77]
# arr1_index_position 0 * arr2_index_position 0

# Algorithm
# create a new arra where we insert each product
# access value at index position 0 for both arr1 & arr2 then multiply
#   new_array << arr[i] * arr2[i]
# append product to new array
# continue upto the size of array

def multiply_list(array1, array2)
  array1.map.with_index do |num, i|
     num * array2[i]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# one liner

def multiply_list(array1, array2)
  array1.zip(array2).map {|sub| sub[0] * sub[1]}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
