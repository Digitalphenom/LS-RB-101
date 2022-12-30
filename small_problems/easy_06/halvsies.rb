def halvsies(digit)
  odd = ((digit.length / 2) + 1); even = digit.count / 2
  o_arr = []; e_arr = []; result = []
  result << o_arr
  result << e_arr
  count = 0

    if digit.length % 2 == 1
      until count == odd 
        o_arr << digit.shift
        count += 1
      end
      until digit.length == 0
        e_arr << digit.shift
      end

    else
      until count == even 
        e_arr << digit.shift
        count += 1
      end
      until digit.length == 0
        o_arr << digit.shift
      end

    end
    result
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3,6,4,5, 3,6,4,5,5]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Goal
# take an array of integers
# return a nested array split in two => [[arr1],[arr2]]

# Clarifying Question
# how do you determine what goes in the first half?
# if digits includes an odd amount of elements split at middle.
# else at halves

# Strategy
# check original array length
# if odd, append odd length of elements of total orginal array length.
# append first half otherwise.


