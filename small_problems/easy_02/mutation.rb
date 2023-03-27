
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# line 2 initializes a variable named (array1) and assigns it an array object.
# line 3 initializes a variable named (array2) and assigns it an empty array.
# line 4 calls the each method on (array1) with a block argument named value, within the block #each iterates over each value and appends each value into the empty (array2)
# line 5 calls the #each method on (array1) and iterates over each value
# upon each pass, it calls destructive #upcase! and uppercases letters that begin with the letters "C", and "S"

# what will array2 print?
# we know that line 4 destructively appends each value from array1 to array 2
# but do they point to the same variable?
# if we go based on the idea that destructive methods modify rubys output from pass by value to pass by refence, then line 4 should have us look for pass by reference.
# therefore line 5 modifies both array1 and array2
# line 6 should print [Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo]
