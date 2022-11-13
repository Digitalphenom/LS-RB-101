[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# num should returns 2 and 3 because they evaluate to true, but because its paired with puts which returns nil, 2 and 3 evaluate to nil.
# else asks to return anything else that evaluates to either false or nil.
# 1 is false because it is not greater than 1.
# line 5 therefore evaluates to 1.

# => [1, nil, nil] 