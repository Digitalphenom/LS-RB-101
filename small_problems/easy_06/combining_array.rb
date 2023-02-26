require "pry"

def merge(array_one, array_two)
  array_one << array_two
  array_one.flatten
  array_one.keep_if { |num| array_one.count(num) <= 1}
  array_one.sort
end


merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# alternate solution
def merge(arr1, arr2)
  unique_values = []
  size = arr1.length 
  count = 0
  loop do
    unique_values << arr1[count] 
    unique_values << arr2[count] 
    count += 1
    break if count == size
  end
  unique_values.uniq.sort
end