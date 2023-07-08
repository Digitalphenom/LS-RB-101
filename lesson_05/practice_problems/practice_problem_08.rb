# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# you can also directly access the inner array along with the desired values and convert them into individual chars then iterate through each and perform the desired output.

hsh.each do |_, arr|
   arr[0..-1].join(" ").chars.each { |char| puts char if char =~ /[aeiou]/}
end

# -----------------------------------------------------

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |array|
  array.each do |word|
      word.chars.each do |char|
        puts char if char =~ /[aeiou]/
      end
    end
end
