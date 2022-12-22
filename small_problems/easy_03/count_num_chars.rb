# => count characters in a string
# get word input
# if inputs includes digits ask again.
# iterate over string input
# calculate amount of values in a word
# if given more than one word
# calculate amount of values in each word excluding spaces.
# print character total and word input.
answer = ""

loop do
  puts "Enter a word or sentence"
  answer = gets.chomp
  if answer.match?(/\d/)
    puts "Enter word characters only"
  else
    break
  end
end

total = answer.chars.map.count { |char| char != " "}
puts "There are #{total} characters in \"#{answer}\""


