=begin
given an array input, repeatedly call merge, untill the array that was destructed into subarrays is a single array

[9, 5, 7, 1]
[[9],[5], [7], [1]]
[[[9],[5]], [[7], [1]]]
  merge => [[5,9], [1, 7]]
  merge => [1,5, 7, 9]
=end

def merge(arr1, arr2)
  index2 = 0
  result = []

    arr1.each do |value|
      while index2 < arr2.size && arr2[index2] <= value
        result << arr2[index2]
        index2 += 1
      end
      result << value
    end

    result.concat(arr2[index2..-1])
  end

def merge_sort(arr)
  sorted = arr.map { |ele| [ele] }

  until sorted.size < 2
    new_sorted = []

    sorted.each_slice(2) do |pair|
      new_sorted << merge(pair.first, pair.fetch(1, []))
    end

    sorted = new_sorted
  end
  sorted.flatten
end

p merge_sort([9, 5, 7, 1])# == [1, 5, 7, 9]
 merge_sort([5, 3]) == [3, 5]
 merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
 merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim  Pete Rachel Sue Tyler)
 merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==  [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]