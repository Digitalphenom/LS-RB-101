
=begin

Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

)⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄


Given an example text data, and a set of keywords, return the corresponding keywords inside the text data, so that when called it produces a random word.

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Example ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄



The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.
Example text data

The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Input: String data

Convert string data into an arr of words
   [hello, there %{noun} ]
Access each word and convert to interpolation keeping the text name so that it coresponds with an input variable
   [hello, there #{noun} ]

{adjective => [qui].sampe}


Output: String data

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Create hash where each word type variable is a key, and its value are word arrays, then filter the input text data so that it is a single (matching word), access each word and inject the value of the key word in random order.

▣  create hash map 
   □ access each input variable
   □ convert var to symbol => var: []
   □ set variable as key
   => {}
▣ Strip input data
   □ remove %{}
   □ join back into single string

▣ Output each word
▣ Perform conversion
   □ access input string
   □ check for matching key with hsh map
      □ convert string to symbol
      □ transform corresponding value in random order
         □ chain random word method

end

The lesson in this exercise highlights the importance of considering how to strucutre data before implementing a solution. Different approaches to organizing data lead to different solutions. Think strategically when deciding how to model data throughout the life of the problem. 

=end

WORD_TYPE= [
   adjectives = %w(quick lazy sleepy ugly),
   nouns = %w( fox dog head leg ),
   verbs = %w(jumps lifts bites licks),
   adverb = %w(easily lazily noisily excitedly),
]

def mad_libs(file)
   filter_file(file).map do |word|
      hsh_map[word].nil? ? word : hsh_map[word].sample
   end.join.each_line { |line| puts line }
end

def hsh_map
   %w(adjective noun verb adverb).map.with_index do |word, i|
      [word, WORD_TYPE[i]]
   end.to_h
end

def filter_file(file)
   file.split(/(,|\s)/).map do |word|
      word.match?(/[%]/) ? word.split(/[%{}]/).join : word
   end
end

file = File.read("example-text-data.txt")
mad_libs(file)


