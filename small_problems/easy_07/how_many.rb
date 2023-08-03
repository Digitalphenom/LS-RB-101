# Problem
# Write a method that counts the number of occurrences of each element in a given array

# Explicit Requirements
# Input: array
# Output: Hash
# count total occurences of each vehicle type

# Implicit Requirements
# pair total occurences with vehicle type

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Strucutre
# {vehicle_type => total_occurences}

# Algorithm
# set an empty hash
# access each vehicle type in array
# insert each unique vehicle type into hash
#   - insert current vehicle into hash key and increment value to 1
# hash[type] = 0 + 1
# return hash

def count_occurrences(vehicles)
  hash = Hash.new(0)
  vehicles.each { |type| hash[type] += 1 }
  hash.each { |k, v| puts " #{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)