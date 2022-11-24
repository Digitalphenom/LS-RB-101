[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

# we iterate using each on a nested collection
# we use the code blocks argument arr and print to the screen the screen the first element in arr.
# 1 & 3 are printed
# puts returns nil and because its the last evaluated expression, the code blocks return value is nil.
# however, each does not consider its return value.
# It simply iterates through the index of the collection.
# because each returns the calling object of the block the whole collection is returned.


