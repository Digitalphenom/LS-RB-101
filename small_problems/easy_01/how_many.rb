vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  puts "car => #{vehicles.count("car")}"
  puts "truck => #{vehicles.count("truck")}"
  puts "SUV => #{vehicles.count("SUV")}"
  puts "motorcycle => #{vehicles.count("motorcycle")}"
  
end


count_occurrences(vehicles)


=begin

iterate through the array collection
count the occurences of each unique value.
  - if (value a == b add 1 or none) (value a == c add 1 or none) etc..
print out each element along with num of occurns

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2





=end
count = 0
loop do
  p vehicles[count]
  count += 1
  break if count == vehicles.length
end
