def diamond(digit)
  space = Hash.new
  diamond = Hash.new
  arr = (1..digit).to_a

  arr.select! { |num| num % 2 == 1 }

  arr.each { |num| diamond[num] = "*" * num }
  arr.reverse_each.with_index { |num, i| space[num] = " " * i }

# further exploration
#  diamond.each do |k,v|
#   next if k == 1 || k.even?
#   v[1..-2] = " " * k
# end
# space[1] << " "

  arr.each { |num| puts "#{space[num]}#{diamond[num]}#{space[num]}"}
  arr.reverse_each do |num|
    next if num == digit
    puts "#{space[num]}#{diamond[num]}#{space[num]}"
  end
end



 diamond(9)

