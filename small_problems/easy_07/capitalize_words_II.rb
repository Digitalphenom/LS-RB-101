
# additional solutions without using the built in capitalize method

def letter_map
  letter_map = Hash.new
  ("a".."z").each do |letter|
    key = letter
    value = (letter.ord - 32).chr
    letter_map[key] = value
  end
  letter_map  
end

def word_cap(str)
  map = letter_map()
  arr = str.split
  arr.each do |word|
    if map.keys.include?(word[0])
      word[0] = map[word[0]]
    end
  end
  puts arr.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
