def interleave(array1, array2)
  result = []
  count = array1.length
  loop do
    result << array1.shift
    result << array2.shift
    count -= 1
    break if count == 0
  end
  result
end


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']