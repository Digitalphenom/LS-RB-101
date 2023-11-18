require "pry"
def balanced?(str)
  parens = 0
  
  str.each_char do |chr|
      parens += 1 if chr == "(" || chr == "["
      parens -= 1 if chr == ")" || chr == "]"
      break if parens < 0
  end
  p parens.zero?s
end

  balanced?('What (is) this?') == true
  balanced?('What is) this?') == false
  balanced?('What (is this?') == false
  balanced?('((What) (is this))?') == true
  balanced?('((What)) (is this))?') == false
  balanced?('Hey!') == true
  balanced?(')Hey!(') == false
  balanced?('What ((is))) up(') == false


=begin

Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

□ Return true when all parens in string are balanced
□ Balanced: parens must be encountered in a open & close sequence [( )]


⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

'What (is) this?') == true
  () => 0

'What is) this?') == false
) ) => -2

'What (is this?') == false
( => 1

'((What) (is this))?') == true
(()())) => 0

'((What)) (is this))?') == false
(()) () ) => -1
-1
('Hey!') == true
zero parens? True

')Hey!(') == false
)() => -1

'What ((is))) up(') == false
(()) )() => -1

'What ())(is() up') == false
() )( () ) -1

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

1 1
I: String

{ ( => occur}
[0] | [1] | [-1]
O: Boolean

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Option1: Access each paren, place into a hash structure where a left & right paren is a key, and the total occurs is a value, extract occurences and get the difference between open & close paren, if 0 return true, false for everything else.

▣ Return true if input string does not include ( or )
▣ Access each char
  □ find a matching ( or ) paren
    Initialize two ( & )parens  to 0
    Increment & decrement as they occur
    return difference

  □ insert into hash key
  □ insert total occurences as value
    ﹥ Append to a value starting from 0 incremented by 1 
    ﹥ {( => 1, ) => 5}

▣ Extract hash values
  □ Access first value & second value then subtract
    ﹥ Apply return criteria
      if 0 true, false for everything else

=end

def balanced?(string)
  balance = 0

  string.each_char do |char|
    break if balance < 0
    if char.match?(/\(/)
      balance += 1
    elsif char.match?(/\)/)
      balance -= 1
    end
  end
  
  balance.zero?
end

p balanced?('Hey!') == true

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false

p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false