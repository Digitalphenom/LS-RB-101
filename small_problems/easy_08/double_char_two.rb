def double_consonants(str)
  result = ""
  regex = /[^0-9aeiou\W]/

  str.chars.each do |chr|
    chr.match?(regex) ? result += chr * 2 : result += chr
  end
  result
end

double_consonants("String") == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants("") == ""


#----------(LS)--------------

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end