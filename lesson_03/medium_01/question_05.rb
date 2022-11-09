
def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# the limit variable is outside of the methods scope therefore it   is unaccessible. you can fix this two different way
# either initialize the limit var within the method so its in scope
# or pass the reference to the variable by parameter