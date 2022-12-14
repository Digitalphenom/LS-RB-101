require "pry"
def is_odd?(num)
  p num % 2 == 1
end

def is_odd_two?(num)
  if num.remainder(2) == 0
    false
  else
    true
  end
end

is_odd?(2)    # => false
is_odd?(5)    # => true
is_odd?(-17)  # => true
is_odd?(-8)   # => false
is_odd?(0)    # => false
is_odd?(7)
puts 
p is_odd_two?(2)    # => false
p is_odd_two?(5)    # => false
p is_odd_two?(-17)    # => false
p is_odd_two?(-8)    # => false
p is_odd_two?(0)    # => false
p is_odd_two?(7)    # => false
