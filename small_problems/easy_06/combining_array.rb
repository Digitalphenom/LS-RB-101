require "pry"

def merge(array_one, array_two)
  array_one << array_two
  array_one.flatten
  array_one.keep_if { |num| array_one.count(num) <= 1}
  array_one.sort
end


merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
