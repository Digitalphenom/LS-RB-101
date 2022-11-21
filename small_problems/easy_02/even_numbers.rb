
1..99.times { |x| puts x if x.even? }

#or 

count = 0
loop do
  count += 1
  break if count < 99
  if count % 2 == 0
    puts count
  else count % 2 == 1
    next
  end
end