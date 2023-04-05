def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  puts "inside method #{a_string_param.object_id}"

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_new_string, my_new_array = not_so_tricky_method(my_string, my_array)

p my_string.object_id
p my_array.object_id
puts "My string looks like this now: #{my_new_string.object_id}"
puts "My array looks like this now: #{my_new_array.object_id}"
puts "My string looks like this now: #{my_new_string}"
puts "My array looks like this now: #{my_new_array}"

# how can the method not mutate the argument passed to it, but still output "pumpkinsrutabaga" & ["pumplins", "rutabaga"]?

# (+=) works as re-assignment and will return a new object 
# Knowing this, replace the shovel operator with (+=) and enclose the string object in brackets. This will add the string to the array and return a new array object with the desired updated values
# we then explicitly return the string and array variable and capture it in a set of variables upon invocation.


