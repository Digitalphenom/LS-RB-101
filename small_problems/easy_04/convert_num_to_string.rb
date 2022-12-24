def integer_to_string(num)
  num = num.digits.reverse
  string = ""
  number_map = {
    0 => "0",
    1 => "1",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9"
}
  num.map do |element|
    string.first << "+" if element
  string <<  number_map[element] if element
  end
    string
end











