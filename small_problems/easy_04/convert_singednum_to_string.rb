
def signed_integer_to_string(num)
  collection = []
  return "0" if num == 0

  num.negative? ? collection << "-" : collection << "+"
  num -= (num + num) if collection.include?("-")

  num = num.digits.reverse
  number_map = {
    0 => "0", 1 => "1", 2 => "2",
    3 => "3", 4 => "4", 5 => "5",
    6 => "6", 7 => "7", 8 => "8",
    9 => "9"
                }

  num.map do |element|
  collection <<  number_map[element] if element
  end

  string = collection.join
  string
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'