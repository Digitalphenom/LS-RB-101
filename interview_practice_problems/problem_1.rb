# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# The tests above should print "true".
=begin

●  Problem
  ⚬ for each number find out how many unique numbers are less than it

● Explicit Requirements
  ⚬ access all numbers from array
  ⚬ Only count unique numbers
  ⚬ Should return an array of counts
  ⚬ 

● Implicit Requirement

● Examples/Test Cases
  ([8,1,2,3]) == [3, 0, 1, 1, 2]
  [1,4,6,8,13,2,5] == [0, 2, 4, 5, 6, 1, 2, 3, 2]

● Data Structures
  [1,4,6,8,13,2,5]
  [0]
  [0, 2]
  [0, 2, 4]..

● Algorithm
  ⚬ Convert array to an array of unique numbers
  ⚬ access the number that you will compare with the rest of the numbers in arr
  ⚬ compare it with the remaining numbers in array
      - iterate through remaining numbers and perform comparison 
        [1,4,6,8,13,2,5] [1] > [4,6,8,13,2,5]
        4 > [1,6,8,13,2,5]
  ⚬ determine how many numbers are less than the current number
  ⚬ populate a new array with the return value of the previous step
  ⚬ continue upto the size of array
  ⚬ return new count array
=end
require "pry"

def smaller_numbers_than_current(arr)
  unique_numbers = arr.uniq
  uniq_size = unique_numbers.length
  result = []
  count = 0

   (0...arr.size).each do |i|
      count = 0
      (0...uniq_size).each do |ii|
        count += 1 if (arr[i] != unique_numbers[ii]) && arr[i] > unique_numbers[ii]
      end
      result << count
   end
   result
end

p smaller_numbers_than_current([8,1,2,2,3])# == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]