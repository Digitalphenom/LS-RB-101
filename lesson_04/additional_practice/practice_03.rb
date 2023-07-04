# GOAL
# # In the following hash, remove all key and value pairs that have a value # greater than 100
# 
# STRATEGY
# # access each value by key, if value is greater than 100 remove key value pair.
# 
# OBJECTIVE
# access each value by key
  # - iterate through hash with reject
# determine if value is greater than 100
#   - compare value with 100 like so value > 100
# remove key value pair

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = 
ages.reject do |_, val|
  val > 100
end
p result

