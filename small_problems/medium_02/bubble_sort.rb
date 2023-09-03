def bubble_sort!(arr, count)
  (0...arr.size).each do |start_idx|
    ((start_idx + 1)...(arr.size - count)).each do |end_idx|
      if arr[start_idx] > arr[end_idx]
        arr[start_idx], arr[end_idx] = arr[end_idx], arr[start_idx]
        break
      end
      break
    end
  end
  arr
end

array = [3, 5]
p array.size.times { |i| bubble_sort!(array, i) }
p array == [3, 5]

array = [7, 4, 2, 1, 6]
array.size.times { |i| bubble_sort!(array, i) }
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
array.size.times { |i| bubble_sort!(array, i) }
p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)