#puts "the value of 40 + 2 is " + (40 + 2)
# this statement attempts to convert an integer into a string. you cant do that in ruby.
# The remedy for this would be string interpolation
puts "The value of 40 + 2 is #{40 + 2}"
#or
puts "the value of 40 + 2 is " + (40 + 2).to_s
