
# what will the following code output?

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name


# I dont remember comming accorss printing 2 variables at the same time.

# Line 4 assigns the string object "Bob" to the variable (name)
# Line 5, name is assigned a new variable (save_name) name & save_name now both point to the object "Bob"(pass by reference)
# Line 6 takes a new String object "Alice" and assigns it to the variable (name).
# because the variables (name) and (save_name) point to the same object 
# line 7 will print  => "Alice", Alice

#-------------------------------------------------------------------------------
# I got this one wrong. remember that ruby is both pass by ref and pass by value depending on whether the objects are being mutated. in the example above theyre being re-assigned thus a new copy of each object is created for both name and save_name.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# if you take this example on the other hand, your solution would apply here.
# notice that theres transformation going on on line 24. This changes the way ruby outputs from pass by value to pass by reference
# line 25 prints => BOB BOB
