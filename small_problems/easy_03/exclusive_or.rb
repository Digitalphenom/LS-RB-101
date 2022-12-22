require 'pry'
def xor?(x, y)
  !(x && y) && (x || y)
  binding.pry
end
