=begin

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

A collection of spelling blocks has two letters per block, as shown in this list:

▣ Explicit Requirements
  □ blocks have two letters per block
    ﹥ B:O   X:K   D:Q   C:P   N:A
    ﹥ G:T   R:E   F:S   J:W   H:U
    ﹥ V:I   L:Y   Z:M
  □ Each letter in each block can only be used once
    ﹥ True constitutes a single letter for each block that it contains

  This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

BATCH
blocks = [[B, O], [], [], [], []]

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

▣ convert blocks to a nested array structure
▣ Access each letter in input string
▣ Check if all letters are included in a block 1 time
  □ Access each letter
  □ check it against each sub-array
▣ Return true false otherwise

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

=end

def block_word?(str, blocks)
  blocks_arr = blocks.gsub(/[:]/, "").split

    str.upcase.chars.all? do |char|
      blocks_arr.one? { |block| block.include?(char) && block.count(char) == 1 }
  end
end

blocks = "B:O X:K D:Q C:P N:A
G:T R:E F:S J:W H:U V:I L:Y Z:M"

p block_word?('BATCH', blocks)# == true
p block_word?('BUTCH', blocks)# == false
p block_word?('jest', blocks)# == true


