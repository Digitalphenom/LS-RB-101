def short_long_short(str1, str2)
  arr = []
  if str1.length < str2.length
    arr << str1
    arr << str2
    arr << str1
  else
    arr << str2
    arr << str1
    arr << str2
  end
  arr.join
end

# compare str1 with str2
# determine who is the smallest string
# add the smallest string to a new array
# then add the largest
# finally add the smallest again.
# => ["xcv", "fjkjsdf", "xcv"]
# join the array

# cant seem to figure this one out yet. 12/15/22
# solved it within 5 min, sometimes the mind just needs a rest 12/22/22

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# 2/20/23 additional answer


def short_long_short(str1, str2)
  if str1.size < str2.size
    short, long = str1, str2
  else
    short, long = str2, str1
  end
  puts "#{short}#{long}#{short}"
end

# can be shortened to:
def short_long_short(str1, str2)
  short, long = str1.size < str2.size ? [str1, str2] : [str2, str1]
  puts "#{short}#{long}#{short}"
end


short_long_short("abc", "defgh")
short_long_short("abcde", "fgh")
short_long_short("", "xyz")