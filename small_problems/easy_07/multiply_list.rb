def multiply_list(array1, array2)
  arr = array1.map.with_index do |num, i|
     num * array2[i]
  end
  arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# one liner

def multiply_list(array1, array2)
  array1.zip(array2).map {|sub| sub[0] * sub[1]}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
