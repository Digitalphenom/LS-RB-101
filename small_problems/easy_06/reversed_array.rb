require "pry"

def reverse!(list)
  return list if list.empty?

  list_length = list.length
  list_copy = []
  list_copy << list
  list_copy.flatten!
  count = 0

  loop do
    list.pop
    count += 1
    break if count == list_length 
  end
  loop do
    count -= 1
    list << list_copy[count]
    break if count == 0 
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true


list = []
result = reverse!(list)
p reverse!(list) == [] # true
p list == [] # true
p list.object_id
p result.object_id # true