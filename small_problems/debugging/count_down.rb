
# given the following code, change it so that the program countsdown from 10-1

def decrease(counter)
  counter.times do
    puts counter
    counter -= 1
  end
end

counter = 10

decrease(counter)

puts 'LAUNCH!'