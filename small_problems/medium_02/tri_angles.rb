
require 'pry'
def triangle(angle1, angle2, angle3)
  total = [angle1, angle2, angle3]

  if total.any? { |num| num == 0} || total.sum < 180
    return :invalid
  elsif total.include?(90)
    return :right
  elsif total.all? { |num| num < 90 }
    return :acute
  elsif total[0] > 90 || total[1] > 90 || toal[2] > 90
    return :obtuse
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) # == :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid

# take a set of 3 integer digits that represent degrees
# return 1 of 4 :symbols => :right, :acute, :obtuse or :invalid

# :right if one digit includes 90(degrees)
# :acute if each digit is less than 90(degrees)
# :obtuse if one digit is greater than 90(degrees)

# return :invalid if one digit include 0
# or the sum of digits is less than 180(degrees)





