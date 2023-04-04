answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# line one initializes the variable answer with the value 42
# line 3 defines the method mess_with_it with a single parameter.
# the expression within the method takes the value passed in and appends (:+=) 8 to it.

# because the shorthand operator `+=` returns a new object, it unbinds the variable within the method and the original object it is referencing. This means changes made to the variable within the method will not reflect to the original object, therefore line 9 will output 34