ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# pick out the minimum age from the hash.
# im assuming minimum age means pick the lowest age from the hash. which would be "eddie" => 10.

low_to_high = ages.values.sort

ages.reject! do |key, value|
  value > low_to_high[0]    
end
p ages

# I couldnt find a method that automatically sizes up values and returns the lowest.
# What I did was grabed the values from the hash and ordered them from low to high.
# Then simply used the destructive version of reject! to remove all values that are higher than the lowest index from low_to_high which will always return the lowest number.

# min is a method that returns the lowest number ***from an array**