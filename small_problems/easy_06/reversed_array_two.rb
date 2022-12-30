

def reverse(list)
  return list if list.empty?

  list_length = list.length
  list_copy = []
  list_copy << list
  list_copy.flatten!
  count = 0

  loop do
    list_copy.pop
    count += 1
    break if count == list_length 
  end
  loop do
    count -= 1
    list_copy << list[count]
    break if count == 0 
  end
  list_copy
end

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id 
new_list.object_id 
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                     # => true

puts

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true
