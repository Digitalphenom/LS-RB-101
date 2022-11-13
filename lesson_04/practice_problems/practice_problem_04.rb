['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

{"cat"}

# each_with_object Calls the block once for each element, passing both the element and the given object:

# In other words, this method eliminates initializing an empty hash/array and instead initialize an object within the methods invocation. hence the ({}) at the end. You can then assign values to the obj from the code block. 

# --- wrong solution----
# breaking things down:
# hash[value[0]] is equal to the key in a hash => {"ant"=> ,"bear"=> , "cat"=> }
# the 0 value accesses the value of the key.
# (= value) assigns (value) to the value portion of the hash
# this code should return :
#  => {"ant"=> "ant","bear"=> "bear","cat"=> "cat" }

**# I was wrong. hash[value[0]] accesses the first letter of value.
# which is obvious now that I take a second look. I assumed that because its a hash, hash[value] equaled the key in the hash and [value[0]] equaled an empty value within the hash. hence{"ant"=>"ant"} upon assignmed of =value.
# In reality {}, then hash[value] selects "ant" on first iteration. [value[0]] selects the first character of "ant" which is "a".
#The assignment part (= value) assigns "ant" to the value of the "a" key. returning :
# => { "a" => "ant", "b" => "bear", "c" => "cat" }

# its important to know in  what order things happen.  