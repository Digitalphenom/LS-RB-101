
def string_to_integer(string)
  integer = 0
  string.each_char { |char| integer = integer * 10 + char.ord - "0".ord }
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

#------------------------------------------
# additional answer 

def string_to_integer(num)
  hash = Hash.new(0)
  arr = num.chars
  total = 0

  ("0".."9").each.with_index { |char, i| hash[char] = i }

  num.each { |element| total = total * 10 + number_map[element] }
  total
end