def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  puts "inside method #{a_string_param.object_id}"

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string, my_array = not_so_tricky_method(my_string, my_array)

p my_string.object_id
p my_array.object_id
puts "My string looks like this now: #{my_string.object_id}"
puts "My array looks like this now: #{my_array.object_id}"
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# how can the method not mutate the argument passed through but should still print to my_string = "pumpkinsrutabaga" & my_array = ["pumplins", "rutabaga"]?

#String += works as re-assignment and creates a new string object within the method definition.

# The reference to this new object is assigned to a_string_param.

# The local variable a_string_param  now points to "pumpkinsrutabaga". This means that a_string_param and my_string are no longer the same object.

# We then return that value and assign it to my_string. my string will now hold the object created inside the method.

