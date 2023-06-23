def is_odd?(num)
  p num % 2 == 1
end

def is_odd_two?(num)
  num.abs.remainder(2) == 1 
end

is_odd?(2)    # => false
is_odd?(5)    # => true
is_odd?(-17)  # => true
is_odd?(-8)   # => false
is_odd?(0)    # => false
is_odd?(7)
puts 

p is_odd_two?(2)    # => true
p is_odd_two?(5)    # => false
p is_odd_two?(-17)    # => false
p is_odd_two?(-8)    # => true
p is_odd_two?(0)    # => true
p is_odd_two?(7)    # => false
irb

