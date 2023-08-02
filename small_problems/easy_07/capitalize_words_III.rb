
# continuation of capitalize_words
# additional example without using built in capitalize method

def word_cap(str)
  arr = str.downcase.split
  arr.each.with_index do |word, i|
    word[0] = (word[0].ord - 32).chr if ("a"..."z").to_a.include?(word[0])
  end
  arr.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
