require "pry"

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
  p arr.join
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