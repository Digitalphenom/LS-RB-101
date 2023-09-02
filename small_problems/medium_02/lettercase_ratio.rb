
=begin
◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ 𝓟roblem ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

Given an input string, return a hash with three entries:
{lowercase => percentage}
{uppercase => percentage}
{neither => percentage}

You may assume that the string will always contain at least one character.

● Implicity Requirements
  ⚬ include empty space chars in neither

◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ Examples ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

abCdef 123'
{lowercase => 4 } ?
{lowercase => 4 } ?
{lowercase => 4 } ?

◸≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◟ Algorithm ◞≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂◹

? How to expess a total count as a percentage of total
  ● Divide the whole by 100 & multiply by the part

? How to count each category of chars?
  ● set 3 counts
    ⚬ upcase, downcase, neither
  ● Access each char and add one to the corresponding count when a given char is encountered

? How to insert percentage as a hash value in a corresponding key
  ● access each count, and assign as a hash value

=end

GROUPS = [:lowercase, :uppercase, :neither]

def add_count(str)
  lowercase = 0; uppercase = 0; neither = 0

  str.each_char do |char|
    if char.match?(/[a-z]/)
      lowercase += 1
    elsif char.match?(/[A-Z]/)
      uppercase += 1
    else
      neither += 1
    end
  end
  [lowercase, uppercase, neither]
end

def letter_percentages(str)
  cases = add_count(str)

  hsh = cases.each_with_object({}).with_index do |(value, hsh), i|
    hsh[GROUPS[i]] = (100 / str.size.to_f ) * value
  end
end


p letter_percentages('abCdef 123') # == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') # == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') # == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


