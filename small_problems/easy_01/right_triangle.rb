# goal
# take a positive (n) integer
# display a right triangle whose sides each have (n) stars.

# strategy
# for every line add one * in increments of (+=1) up to (n)
# for every line add (n) spaces minus (-=1) up to (n)

# tactics 
# use a while loop to append spaces and stars on each line until (n) 

def triangle(num)
  count = 0
  count_two = num
  asterisk = "*"
  space = " "

  until count == num
    puts "#{space * count_two }#{asterisk * count}"
    count += 1
    count_two -= 1
  end
end

triangle(5)
