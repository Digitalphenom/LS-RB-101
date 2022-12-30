require 'pry'
def triangle(digit)
  space_count = digit
  start_count = 0
  loop do
    space_count.times do |i|
      print "."
    end
    puts "\n"
    space_count -= 1
    break if space_count == 1 
  end
  loop do
    start_count += 1
    start_count.times do |i|
      print "*"
    end
    puts "\n"
    break if start_count == digit
  end

end

triangle(5)

