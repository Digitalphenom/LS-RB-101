text_01 = File.read("text_01.txt")
text_02 = File.read("text_02.txt")

def longest_sentence(essay)
  sentences = essay.split(/[\.|\?\!]/)
  word_count = []
  
  sentences.each do |sentence|
    word_count << sentence.split.size
  end

  largest = word_count.sort

  size = word_count.map.with_index do |count, i|
    sentences[i] if largest[-1] == sentences[i].split.size
  end

  sentence, count = size.compact!, largest[-1]
   puts "LARGEST SENTENCE => #{sentence} WORD COUNT => #{count}"
end

#longest_sentence(text_01)
longest_sentence(text_02)