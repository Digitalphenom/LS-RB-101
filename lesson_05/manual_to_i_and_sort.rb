# given the following array, use a loop (no built in methods) to return the original array populated with integers instead of strings.

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

def convert_to_i(arr)
  count = 0
  inner_count = 0

  loop do
    inner_array = arr[count]
    loop do
      int = inner_array[inner_count].to_i
      inner_array[inner_count] = int
      inner_count += 1
      break if inner_array.size == inner_count
    end
    count += 1
    inner_count = 0
    break if arr.size == count
  end
  arr
end

# sort by numerical comparison

p convert_to_i(arr).sort_by { |sub_arr| sub_arr }

