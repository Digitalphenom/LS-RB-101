def cleanup(string)
  spaces = string.scan(/\s+/)

  string.each_char do |char|
    if char.match?(/[^a-z]/)
      string[char] = " "
    end
  end
  string.gsub(/\s+/, " ") if spaces.size > 1
end

cleanup("---what's my +*& line?") == ' what s my line '

#additional answer

# take a str of lower case chars
# for every non alphanumberic char add one space and return the str of alphabetic chars => "+;hello ++my *;name" " hello my name"

# STRATEGY
# take string and scan it to see if it includes non alphaberic chars, if it does replace each group of non-alphabetic chars with one space. return the string

#OBJECTIVES
# 1) scan string
# 2) check if it includes non-alphabetic chars
# 3) replace each group of chars with one space
#   a) each (group) of chars begins at the first non-alpha char and ends when the
#   next alphabetic char begins.
#     TACTIC
#     use gsub(value,replace) to check scan and replace
#     use regexp to determine the beginning and end of group
#       a) how to use regexp to determine beginnign end?
        # => \s{2,}\
# 4) return string

# ALGORITHM
# 1) str.gsub!(/\W/, " ")
# 2) str.gsub!(/\s{2,}/, " ")
# 3) str

def cleanup(str)
  str.gsub!(/\W/, " ").gsub!(/\s{2,}/, " ")
end

p cleanup("---what's my +*@ line?")
