=begin
Generate a sequence from 1 upto input N, output (idx * "*") upto N
multiply "*" times current number
Chaing on empty space " " *  N - 1
decrement by 1

=end
def triangle(n)
  space = n - 1

  1.upto(n) do |i|
    puts "#{" " * space} #{"*" * i }"
    space -= 1
  end
end

triangle(5)
