def bubble_sort!(arr, count)
  (0...arr.size - 1).each do |start_idx|
      if arr[start_idx] > arr[start_idx + 1]
        arr[start_idx], arr[start_idx + 1] = arr[start_idx + 1], arr[start_idx]
      end
  end
  arr
end

#array = [3, 5]
#p array.size.times { |i| bubble_sort!(array, i) }
#p array == [3, 5]
#

array = [7, 4, 2, 1, 6]
array.size.times { |i| p bubble_sort!(array, i) }
p array == [1, 2, 4, 6, 7]
# 
# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# array.size.times { |i| bubble_sort!(array, i) }
# p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)