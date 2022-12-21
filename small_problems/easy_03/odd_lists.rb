#Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(num)
  collection = []
  num.each_with_index do |num, idx|
  idx.even? ? collection << num : next    
  end
  p collection
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# -----------------------------------------------
# 12.22
# additional answers

def oddities(array)
  evens = array.select.with_index do |num, i|
    i.even?
  end 
  p evens
end

# -----------------------------------------------

def oddities(array)
  every_other = []
  count = 0
  until count == array.size
    if count.even?
    every_other << array[count]
    end
    count += 1
  end
  p every_other
end