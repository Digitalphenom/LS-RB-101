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