require 'pry'
def fibonacci(n)
  first = 0
  last = 1

  n.times do
    temp = first
    first = last
    last = temp + first
  end
  p first % 10
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
# if we break down the fib sequence it starts with 0, then
# F(n - 1) + F(n - 2)

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