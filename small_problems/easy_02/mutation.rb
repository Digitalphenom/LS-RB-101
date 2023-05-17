
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


#what will array2 print? Why is that the case?
#  we know that line 4 destructively appends each value from array1 to array 2 #but do they point to the same variable?
#  
#  In this program, the call to puts with array2 as an argument will output:
#  
#  ```ruby
#  Moe
#  Larry
#  CURRY
#  SHEMP
#  Harpo
#  CHICO
#  Grouco
#  Zeppo
#  => nil
#  ```
#  This is because on the first call to `each` on line 4, within the block the #expression `array2 << value` appends each element from array1 to array2. At #this point, both array1 and array2 reference the same elements and are #upcased with `value.upcase!` if the condition `value.start_with("C", "S")` #evaluates to `true`, when the program reaches the second call to `each` on #line 5.
#  
#  The concept at play is variables as pointers. When you use the shovel #operator `<<` to append an element from one array to another, youre actually #appending a reference to the original object, not creating a new one.