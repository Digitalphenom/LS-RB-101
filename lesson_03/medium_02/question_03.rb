def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# this exercises boils down to understanding the difference in behavior of the (String #+=) and (Array# <<)
# += works as concatenation and << is similar in that it appends values in this case to an array.
# so what is the difference between the two?
# will they mutate my_string & my_array? YES!
# wrong. += is non mutable.
# The String#+= operation is re-assignment and creates a new String object.
# this means 
#puts "My string looks like this now: pumpkins"
#puts "My array looks like this now: ["pumpkins"],["rutabaga"]"