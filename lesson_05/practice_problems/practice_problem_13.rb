
# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = 
arr.sort_by do |sub_arr|
  sub_arr.select {|int| int.odd?}
end


p result == [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# first you create a new array of odd integers. This filtered array is used as the criteria for sorting the original's sub-arrays. It does this by comparing each element from the original array with that of the odd-integers array elements. This results in a new array where the sub-arrays are sorted according to the order of ther respective odd integers.