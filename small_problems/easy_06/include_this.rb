
def include?(array, digit)
  array.select! do |num|
    num == digit
  end
  array.empty? ? false : true
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
