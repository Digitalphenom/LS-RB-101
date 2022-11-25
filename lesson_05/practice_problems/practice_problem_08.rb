hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |value|
  value.each do |word|
    arr = word.chars
      arr.each do |vowels|
        vowels.match(/[aeiou]/) { |matchdata| puts matchdata }
      end
    end
end
