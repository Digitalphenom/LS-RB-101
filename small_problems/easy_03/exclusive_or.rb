
def xor?(x, y)
  !(x && y) && (x || y)
end
# additional approach
def is_even?(num,num2)
  (num && !num2 ) || (!num && num2)
end
