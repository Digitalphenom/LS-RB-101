a = 42
b = 42
c = a

puts a.object_id # 85
puts b.object_id # 85
puts c.object_id # 85

# the object 42 is assigned to a. a now references 42 with an object id of 20
# the same applies to line two but instead with a new label b and new object id 40.
# this is the same exact problem as before except with integers. 
# this leads me to believe that its a trick question, the behavior exhibited in the previous exercise will likely not apply here.
# from what I understand integers are immutable but I dont know if that has any ramifications to this exercises.

# **ah yes because integers are immutable this means there can only be one of each object. this means that the object slapped on with the label a is the same object being referenced to b and then c. therefore the answer is 85 for all.
