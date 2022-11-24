[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# line 1 is a method call on the object outer array. it does not have any side-effects nor a return value.

# we have a nested loop meant to access the sub-arrays elements and transform/modify by * 2.
# The second method call to arr return value is => [[2,4],[6,8]]


