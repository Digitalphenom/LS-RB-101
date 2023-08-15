=begin

Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ 𝓟roblem ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

Given a string, return a count of duplicate chars
Duplicate chars include lower and upper case chars as well as numbers

  ● Explicit Requirements
    ⚬ Duplicate chars include lower and upper case chars 
  
  ● implicit requirement
    ⚬ duplicate character count as 1

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ 𝓔xamples ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

"abcde" -> 0 # no characters repeats more than once

"aabbcde" -> 2 # 'a' and 'b'

"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)

"indivisibility" -> 1 # 'i' occurs six times

"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice

"aA11" -> 2 # 'a' and '1'

"ABBA" -> 2 # 'A' and 'B' each occur twice


≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ 𝓓ata 𝓢tructures ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂


b, d, e, i, i, i, i, i, I, i, l, n, s, s, t, v
b
d
e
iiiiiIil
n
ss
t
v

b
bd
bde
bdei
bdeii
bdeiii
bdeiiii
bdeiiiii
bdeiiiiiI
bdeiiiiiIi
bdeiiiiiIil
bdeiiiiiIiln
bdeiiiiiIilns
bdeiiiiiIilnss
bdeiiiiiIilnsst
bdeiiiiiIilnsstv
d
de
dei
deii
deiii
deiiii
deiiiii
deiiiiiI
deiiiiiIi
deiiiiiIil
deiiiiiIiln
deiiiiiIilns
deiiiiiIilnss
deiiiiiIilnsst
deiiiiiIilnsstv
e
ei
eii
eiii
eiiii
eiiiii
eiiiiiI
eiiiiiIi
eiiiiiIil
eiiiiiIiln
eiiiiiIilns
eiiiiiIilnss
eiiiiiIilnsst
eiiiiiIilnsstv
i
ii
iii
iiii
iiiii
iiiiiI
iiiiiIi
iiiiiIil => 7
iiiiiIiln
iiiiiIilns
iiiiiIilnss
iiiiiIilnsst
iiiiiIilnsstv
s
ss => 2
sst
sstv

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ Algorithm ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

● access each letter
● form a pair with each subsequent letter
● continue process until I have an array of all possible pairs

● Access each pair
● access all values in pair and check for pairs of 2 of the same char type
  ⚬ remove pairs that are not duplicates
● result should be an array of duplicate pairs

● access array and count values
● return count

=end

def duplicate_count(str)
  str = str.downcase
  count = 0
  uniq = str.chars.uniq.join
  uniq.each_char do |char|
    count += 1 if str.count(char) > 1
  end
  count
end

p duplicate_count("")
p duplicate_count("abcde")
p duplicate_count("abcdeaa")
p duplicate_count("abcdeaB")
p duplicate_count("Indivisibilities")

