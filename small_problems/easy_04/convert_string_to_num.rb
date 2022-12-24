require "pry"
def string_to_integer(string)
  integer = 0
  string.each_char do |char|
    integer = integer * 10 + char.ord - "0".ord
    end
    integer
end

p string_to_integer('4321') == 4321
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

#------------------------------------------
# additional answer 

def string_to_integer(num)
  num = num.split("")
  arr = []
  total = 0
  number_map = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9
}
  num.map do |element|
  total = total * 10 + number_map[element] if element
  end
    total
end