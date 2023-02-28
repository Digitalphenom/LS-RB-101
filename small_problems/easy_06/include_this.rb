
def include?(array, digit)
  array.select! do |num|
    num == digit
  end
  array.empty? ? false : true
end

p include?([1,2,3,4,5], 3) 
p include?([1,2,3,4,5], 6) 
p include?([], 3) 
p include?([nil], nil) 
p include?([], nil)

# 2/26/23
#additional answers

def include?(arr, num)
  flag = false
  count = 0

  until  count == arr.size
    return flag = true if arr[count] == num
    count += 1
  end
  flag
end