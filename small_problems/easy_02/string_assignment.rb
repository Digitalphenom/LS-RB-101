
# what will the following code output?

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# line 7 will output "Alice" and "Bob" respectively because re-assignment on line 6 caused `name` to point to the new object "Alice", this expression had no effect on `save_name` which still points to "Alice".

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# in this case the output is BOB and BOB because both name and save_name initially reference "Bob", when the mutating upcase! method is called, it modifies the string in place, and unlike the previous example both local variables still point to the initial object "Bob
