['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# With no argument and a block given, calls the block with each element; returns the count of elements for which the block returns a truthy value

# the count method basically tallys the total number of occurences for which the block returns true.
# In this case the length of each str that is less than 4.
# This means the return value will be 2 because "ant" and "bat" are the only strings less than 4. 