# GOAL
# given the following hash, pick out the minimum age from the hash

# STRATEGY
#   initialize a tally variable, access each value, determine if the current value is less than or greater than tally, if less than reassign, if greater than go next, return tally

# OBJECTIVES
#   initialize a tally variable to 0
#   access each value
#   reassign tally to the first value
#   determine if current value is less than or greater than tally
#     - compare tally with current value if tally is greater than value reassign. If tally is less than value go next.
#   return value

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

tally = 0

ages.each do |k, v|
  tally = v if tally.zero?
  tally = v if tally > v
end
p tally
