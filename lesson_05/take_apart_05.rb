[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# we have a nested array with 2 method calls meant to access the sub-arrays elements and transform/modify by * 2.

# line 1 is a method call on the object outer-array. its return value is a new array of the object it was called on without transformation.
# line 2 is a method call (map) on line 1's argument |arr|.
# it has its own argument |num| to access the inner values of the nested array. its return value is its blocks return value on line 3
# line 3 performs transformation on the inner elements |num| * 2
# the return value of the second method call is a new tranformed array => [2,4][6,8]
# the return value of the first method call is is a new tranformed array => [[2,4],[6,8]]


