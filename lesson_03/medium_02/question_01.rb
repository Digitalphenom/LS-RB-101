
a = "forty two"
b = "forty two"
c = a

puts a.object_id 
puts b.object_id
puts c.object_id

# a obj_1 = 1
# b obj_id = 2
# the label c is assigned to a which contains an object_id of 1
# the object a and c now point to the same object with and id of 1
