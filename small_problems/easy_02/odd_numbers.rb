
1..99.times do |num|
  if num.odd? 
   puts num
  end
end

# or using modulo operator

1..99.times do |nums|
   if nums % 2 == 1 
    puts nums
   end
end

# heres another way. 
value = 1
while value <= 99
  puts value
  value += 2
end

#-------------------
#notice when using select you need to use parens for range. thats not the case for range.
(1..99).select do |nums|
  if nums % 2 == 1 
   puts nums
  end
end