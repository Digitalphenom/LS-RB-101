[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# line 1- the action is a method call on the outter array with no side effects and a return value of [nil nil]. The return value is not used.

# line 1-3- block execution on each sub array. line two will return nil nil however arr.first is the last evaluated expression. its return value will be used to perform transformation.

# the return value of arr.first is 1,3 so what will be returned?
# => [1, 3]


