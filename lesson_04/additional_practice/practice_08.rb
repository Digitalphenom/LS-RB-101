
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.pop(1)
end

#-----------wrong solution---------------------#
# shift destructively removes the first element in an array.
# when arguments are provided it removes(x) amount of times and returns an array with the element that was removed => [x]
# when no arguments are provided it returns the element self => "x"
# In the example the return value will be the last removed element in an array =>[4]

#---------------------------------------------------

# I just re-read the question and it doesnt ask what will be returned, rather what will be output. Also, I mixed up the similar named variables, numbers & number. Either way I got the return value wrong. I dont know why it returns [1][2] isnt each supposed to iterate over each number in the array? when I check the array it still contains 3 and 4. This means that its not iterating over every element. why? 
#----------------- Solution --------------------------
# To understand what is going on, I need to delve into how each iterates over a collection. I was overlooking the fact that each iterates over a collections index, NOT the values themselves.
# shift destructively removes elements from the array.
# because iteration and destruction is happening in real time.
# => "0  [1, 2, 3, 4]  1"
# => "1  [2, 3, 4]  3"
# when the element is removed on the second iteration 2 which should hold the idex of 1 is now updated to hold the index of 0. however the current index on the iteration is 1. thats why [3] is removed.
# Your then left with: 
# => "  [3, 4]  "
# after this the current iteration is now at index 2 but there are only 2 elements in the array and so iteration terminates and returns [3, 4].

#-----------------------------

# pop works similarly as shift with the exception that it removes an element from the end of an array.
# the return value will be [1]