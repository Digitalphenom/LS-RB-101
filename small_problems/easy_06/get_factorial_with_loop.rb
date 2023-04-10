
def factorial(num)
  count = num
  product = 0
  result = 0
  factorial = num

  loop do
  count -= 1
  product = factorial * count
  factorial = product
  break if count == 1
  end
  product
end

factorial(5)
