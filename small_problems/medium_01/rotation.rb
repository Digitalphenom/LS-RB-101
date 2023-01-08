def rotate_array(array)
  temp = array.dup
  temp << temp.slice!(0)
end

def rotate_string_or_integer(value)
  value.is_a?(String) ? arr = value.chars : arr = value.digits.reverse

  rotate = rotate_array(arr)

  if value.is_a?(String)
    rotate.join
  else
    rotate.inject(0) { |result, num| result * 10 + num}
  end
end

name = "Sedrick Penate"
digits = 9696
x = [1, 2, 3, 4]
p rotate_string_or_integer(name)
p rotate_string_or_integer(digits)
p rotate_array(x)
digits = 9696
name = "Sedrick Penate"
x = [1, 2, 3, 4]

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
 rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
 rotate_array(['a']) == ['a']


#---------(LS)------------------------
def rotate_array(array)
  array[1..-1] + [array[0]]
end