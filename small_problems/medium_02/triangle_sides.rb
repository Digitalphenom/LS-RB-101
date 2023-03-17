def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+) || sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) 
p triangle(3, 3, 1.5) 
p triangle(3, 4, 5) 
p triangle(0, 3, 3) 
p triangle(3, 1, 1)


# input: 3 integers 
# return: one of four symbols: equilateral, isosceles, scalene, invalid
