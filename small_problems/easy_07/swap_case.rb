def letter_map
  letter_map = Hash.new
  ("A".."Z").each do |letter|
    key = letter
    value = (letter.ord + 32).chr
    letter_map[key] = value
  end
    letter_map
end

def swapcase(str)
  map = letter_map()
  str = str.chars
  arr = []
  str.each do |letter|
    if map.keys.include?(letter)
      arr << map[letter]
    elsif map.values.include?(letter)
      arr << map.key(letter)
    else
      arr << " "
    end
  end
    arr.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
