
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# line 2 creates a new array named (array1)
# line 3 creates an empty array named (array2)
# line 4 uses the each method on (array1) to iterate over each of its values and 
# append each value into the empty (array2)
# line 5 uses the each method on (array1) to iterate over each value.
# upon each pass, it uses the destructive upcase! method to uppercase all letters that beging with the letters "C", and "S"

# what will array2 print?
# we know that line 4 destructively appends each value from array1 to array 2
# but do they point to the same variable?
# if we go based on the idea that destructive methods modify rubys output from pass by value to pass by refence, then line 4 should have us look for pass by reference.
# therefore line 5 modifies both array1 and array2
# line 6 should print [Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo]
