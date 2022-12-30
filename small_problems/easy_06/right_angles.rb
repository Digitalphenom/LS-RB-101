def triangle(digit)
  space_count = digit
  star_count = 0

  loop do
    star_count += 1
    space_count.times do
      print " "
    end
    star_count.times do
      print "*"
    end
    puts "\n"
    space_count -= 1
    break if space_count == 0
  end

end

triangle(5)

