[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.to_i == el   # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# we have a nested array, one 2 layers deep with 2 collections and another one layer deep single collection.
# how can I iterate through the collection, access its elements then increment its values by 2, when one of the collections is nested 2 layers deep and the other only one layer deep?

# the first method should iterate through the collection and return a new array with the result from the second method call.
# the return value is based on the conditional statement integer or array.
# if the iterations find an element, increment by one.
# if it is not an element, do another method call to iterate through again and then increment the value by 1.
# The conditional statement is how you access the deeper values within a nested collection of varying depths.