count = 1

loop do
  count.odd?
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  break if count == 5
  count += 1
end
