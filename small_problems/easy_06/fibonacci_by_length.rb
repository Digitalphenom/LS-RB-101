
def find_fib_index_by_length(num)
  first = 1
  second = 1
  index = 2
  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= num
    first = second
    second = fibonacci
  end
  index
end