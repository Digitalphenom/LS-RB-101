my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end


# line 1 is a method call #each to the outter object array. its return value is the object it is called on
# line 2 uses the first method calls argument |arr| as a second method call to access the inner array. its return value is the object it is called on [18,7][3,12]
# line 3 is a conditional statement to line 2 method argument |num| which is the elements within the inner-array.
# if num is greater than 5 then -
# line 4 will output nums 18,7,12 to screen.

# the return value of the program is then saved to my_arr on line 1.
# because each does not consider its return value instead returns the original calling object. the return value of my_arr should be:
# => [[18, 7], [3, 12]]

# this onces tricky because there are 2 return values. the first and second method call. so which one is considered? if the first then the return value is 
# => [[18, 7], [3, 12]]
# if the second then its 
# => [18, 7], [3, 12]