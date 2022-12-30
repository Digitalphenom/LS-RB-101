
def word_cap(str)
  arr = str.split
  capped = []
   arr.each do |word|
    capped << word.capitalize
  end
  puts capped.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

