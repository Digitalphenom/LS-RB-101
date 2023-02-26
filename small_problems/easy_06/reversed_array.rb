
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


# additional answer 2/24/23

# take an array of values
# return the same array with array values reversed

# STRATEGY 
#  access all values one by one beginning from the end then insert them to the beginning in order.

# OBJECTIVES
# 1) access all values from end of index
    # a) To beginn I need to decide how im going to iterate through each value I can either use a loop such as each/while or take a more declarative approach and use the #sort method.
    # b) the problem essentially is asking to sort the values in reverse order, the fastest way to do that would be by using the sort method so Ill go with that.
#     
# 2) insert them to beginning in order

# the sort method algorithm I outlined works but only with integer values. im receiving and error when attempting to sort strings chars. The solution was to use (a.length) in order to compare integer values. that however did not work with integers because the length method is not available on integers. to solve that I used a conditional logic statement so that when an argument is_a? Integer its sorted by value, for everything else its sorted by a.length.


def reverse!(list)
  list.sort! { |a, b| a.is_a?(Integer) ? b : b.length }
end