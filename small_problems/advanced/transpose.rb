
=begin
A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements. For example:


1  5  8
4  7  2
3  9  6

Can be described by the Array of Arrays:

The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows of the original matrix. For example, the transposition of the array shown above is:

1  4  3
5  7  9
8  2  6

Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed to use the Matrix class from the standard library. Your task is to do this yourself.

Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Problem)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

 
● Write a method that takes a 3 x 3 matrix in a nested Array and returns the TRANSPOSE of the original 3 x 3 matrix.

◆ Explicit requirements
  ⚬ Input: Nested Array
  ⚬ Output: New Nested Array
  ⚬ nested array will contain 3 sub-arrays
  ⚬ each sub-array contains 3 integers
  ⚬ do not modify original array
  ⚬ cannot use built in methods to do the task

◆ Implicit Requirement
  ⚬ each original sub-array value must be inserted into the new sub-arrays in the order of a column where a square represents the 3 sub-arrays.


≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Examples/TestCase)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

1  5  8
4  7  2
3  9  6

1  4  3
5  7  9
8  2  6

# def new_matrix(matrix)
#   [matrix[0][0], matrix[1][0], matrix[2][0]]
# 
# end

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Data Structures)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

[
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

[[1]]
[[1, 4]]
[[1, 4, 3]]
[[1, 4, 3], [5]]
[[1, 4, 3], [5, 7]]
[[1, 4, 3], [5, 7, 9]]...

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Algorithm)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

● parallel assign matrix to 3 variables each representin there own sub-array
● access each array
● then access the first value of each original sub-array
    ⚬  access the first value of each array which in this scenerio will be a total of 3 arrays. This means that I will need to access each value via its index position.

● transform a new sub-array with the first values of each original sub-array
● then access second value in original sub-array and repeat process until all values in sub-array are transformed into a new sub-array

=end

def transpose(matrix)
  arr1, arr2, arr3 = matrix

  matrix.map.with_index do |_, i|
    [arr1[i], arr2[i], arr3[i]]
  end
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)
 
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]