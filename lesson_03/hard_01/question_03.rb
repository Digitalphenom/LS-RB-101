def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# line 2 - 4 reassigns the passed in value to a new local variable inside the method.
# the outer variables are unchanged.

#--------------------------------------

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#--------------------------------------

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# one, two, three are passed in to the method
# the method assigns a local variable of one, two, three that is different from the outer variable names.
# gsub! mutates the local variable by altering the values passed in "one", "two", "three" with :
#one = "two"
#two = "three"
#three= "one"

# because the values being altered reference the outer variables objects. they retain their reference to the outer variables.
# thus one = "two"
# thus two = "three"
# thus three = "one"