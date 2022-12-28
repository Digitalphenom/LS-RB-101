require 'pry'

def word_sizes(string)
  values = []
  hash = {}

  string.split.each do |char|
    char.gsub!(/[^a-zA-Z]/, "")
    values << char.size
    hash[char.size] = hash[char.size]
  end
  
  values.each { |num| hash[num] = values.count(num) }
  hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}