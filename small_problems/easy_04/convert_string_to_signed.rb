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

# additional answer using a hash map

def positive_value(str)
  return positive_str = nil if str.include?("-")
  str.include?("+") ? str[1..-1] : str
end

def negative_value(str)
  return negative_str = nil if str.include?("+")
  str[1..-1] if str.include?("-")
end

def integer_map(str)
  hash = Hash.new(0)
  ("0".."9").each.with_index { |char, i| hash[char] = i }
  hash
end

def string_to_integer(str)
  accu = 0
  hash = integer_map(str)

  positive_str = positive_value(str)
  negative_str = negative_value(str)
  
  if positive_str
    positive_str.each_char { |char| accu = accu * 10 + hash[char] }
  else
    negative_str.each_char { |char| accu = accu * 10 + -hash[char] }
  end
  accu
end