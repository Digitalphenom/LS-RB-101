answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# line one initializes the variable answer with the value 42
# line 3 defines the method mess_with_it with a single parameter.
# the expression within the method takes the value passed in and appends (:+=) 8 to it.
# line seven initializes a new variable named new_answer and assigns it the return value of calling the method mess_with_it with an argument of the initialized variable on line 1 (42)
# the value of new_answer should now be 50.
# line 9 prints the value of answer - 8
# heres the tricky part, was answer mutated when it was passed through the mess_with_it method?
# off the top of my head, += is non transformative so the answer to this question will be | answer(42) - 8 = 34 |

# ** however Integers are non mutable so = & += will not have an effect on original values.}