# GOAL 
# add up all of the values in the ages hash

# STRATEGY
# access each value and add each value then output the total value

#OBJECTIVES
# initialize a tally variable to 0
# access each value & add to tally
# output tally variable to screen

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


count = 0
ages_keys = ages.keys
total_age = 0

loop do
  total_age += ages[ages_keys[count]]
  count += 1
  break if count == ages_keys.size
end
p total_age

# I could have used #each for this but wanted to do a manual approach that would give me a bit more of a challenge.

ages.each {|_, age| total_age += age}
total_age # => 6174