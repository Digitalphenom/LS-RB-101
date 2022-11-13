[1, 2, 3].select do |num|
  num > 5
  'hi'
end


# ok this ones a little tricky because select returns an array with the values that were selected. but because no value meets the selection criteria, it should not select anything and return an empty array.
# however because the last evaluated expression is "hi" will "hi" be returned on each iteration ie [hi,hi,hi]?
# im going to go with no. the reason for this is because "hi" although the last evaluated expression, does not meet the selection criteria. the purpose of select is to return a truthy value based on a given selection criteria. therefore the return value will be [nil, nil, nil] or an empty array.

***# ok I was wrong, the purpose of select is to filter through values and return truthy based on the blocks return value. this is a key distinction i was not making. I thought it returned true on the selection criteria which in this case is ( num > than 5 ) which is false. I extrapolated that to mean that "hi" would also be false. but "hi" is true. therefore the whole expression is true, select will then process every value as true and return =>[1,2,3]


