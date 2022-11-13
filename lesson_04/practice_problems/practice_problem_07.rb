odd = [1, 2, 3].any? do |num| 
  puts num
  num.odd?
end 
#1
# => true

# the any? method returns true or false on any? element of self.
# (puts num) prints out the values 1,2,3 because any? called on the collection is truthy.
# however the last evaluated expression asks if the iterator (num) contains any? odd numbers which evaluates to true.
# therefore the return value is true but puts, to my surprise prints 1

# because the method asks if there are any? odd values in the collection as soon as it finds one, it terminates the iteration printing only 1.

odd = [2, 2, 3, 4, 5, 0].any? do |num| 
  puts num
  num.odd?
end
#2, 2, 3
# =>true

# updateding the values, it does indeed print out the values as the collection is being iterated until the odd criterion is met.