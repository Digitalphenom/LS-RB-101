
def fibonacci(n)
  if  n < 2
    n
  else
    (fibonacci(n - 1) + fibonacci(n - 2))
  end
end

p fibonacci(5)
#fibonacci(1)
#fibonacci(2)
#fibonacci(3)
#fibonacci(4)
#fibonacci(5)

# the tricky part with recursion is holding the result of the calculated methods return value in head while simulatenously producing a new value

# if we break down the fib sequence it starts with 0, then
# F(n - 1) + F(n - 2)
#3=((3 - 1) = 2) + (3 - 2 = 1)
# (0) 0 + 0 = 0
# (1) 0 + 1 = 0
# (2) 1 + 0 = 1

# (3) 1 + 1 = 2
# (4) 1 + 2 = 3
# (5) 2 + 3 = 5
# (6) 3 + 5 = 8
# (7) 5 + 8 = 13
# (8) 8 + 13 = 21
# (9) 13 + 21 = 34
# (10) 21 + 34 = 55
# (11) 34 + 55 = 89
# (12) 55 + 89 =  144