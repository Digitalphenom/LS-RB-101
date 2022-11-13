[1, 2, 3].reject do |num|
  puts num
end

# Returns a new Array whose elements are all those from self for which the block returns false or nil:

# It looks like reject is the opposite of #select. 
# num contains all the values in the selection which all evaluate to true.
# puts num should print all the values on the screen for which the block returns false or nil.
# however puts returns nil and its the last evaluated expression. because of this the return value should be => [1,2,3].
