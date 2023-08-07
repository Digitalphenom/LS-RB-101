# In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

=begin
≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Problem)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
count lowercase chars in a string
return the total letter count in a hash
each char should be a symbol
each symbol should be represented as key
total chars count in string represented as a value.

● Explicit Requirements
  ⚬ Each key must be in the form of a symbol => :a
  ⚬ return a hash

● Implicit Requirements
  ⚬ Non-alphabetic chars??
  ⚬ each char key must be unique

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Test Case)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
'arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Data Structure)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
{:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Algorithm)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

● access each individual char
● insert unique char into hash key
● count total char occurences & insert into hash value

=end
  
def letter_Count(str)
  hsh = {}
  str.each_char { |chr| hsh[chr.to_sym] = str.count(chr)}
  hsh
end

p letter_Count('arithmetics') # == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}