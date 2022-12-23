require 'pry'
def string_to_signed_integer(string)
  integer = 0

  if string.include?("-")
    string.slice!(0)
    string.each_char do |char|
      integer = (integer * 10 + char.ord - "0".ord) - (char.ord - "0".ord) * 2
    end
  elsif string.include?("+") || string != string.include?("+")
    string.slice!(0) if string.include?("+")
    string.each_char do |char|
      integer = integer * 10 + char.ord - "0".ord
    end
  end
  integer
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
string_to_signed_integer('-58070') == -58070
string_to_signed_integer('+1856') == 1856