arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.map do |collection|
   collection.sort_by do |values|
     values
  end
end

# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

# iterate through collection
# access each value and sort by odd number

# I dont understand how to sort numbers using the #sort or #sort_by when dealing with values at the individual level.

# If I attempt to sort the collections itself, I cant access the values to sort by #odd? If i attempt to sort the collection it does not behave accordingly.

# so how can I access the individual elements to determine wether they are odd? then go back one level up to sort the collections based on the result from odd?