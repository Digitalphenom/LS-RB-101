=begin
◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ 𝓟roblem ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ Examples ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ Algorithm ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

? How to extract repeating characters from input string
  ● select values that occur two or more times
    ⚬ Access each char, and compare with all remaining chars
      ⚬ if char is equal to all chars it encounters
      ⚬ separate all chars into new collection
        => [a,a],[b,b] => 2
        => [i,i,i,i,i,i] => 1
        => [A,A], [B,B] => 2

? How to determine the difference between exacted and remaining chars
  ● count the total sub_arrays in var

=end

# Return the total count of distinct case-insensitive alphabetic chars & digits that occur more than one time.

str = "aabbcde"

p str.downcase.chars.tally.count {|_, value| value > 1} # => 2


str = "aabbcde"
arr = str.downcase.chars

result = arr.select.with_index do |char, i|
  (0...arr.size).any? do |ii|
     next if i == ii
    char == arr[ii]
  end
end

p result.uniq.count # => 2
p duplicate_count("")
p duplicate_count("abcde")
p duplicate_count("abcdeaa")
p duplicate_count("abcdeaB")
p duplicate_count("Indivisibilities")