def ascii_value(string)
  digit = 0
  string.each_char { |char| digit += char.ord }
  digit
end

ascii_value("")