=begin


⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.


A triangle is classified as follows:

▣ Explicit Requiremetns:

  □ (equilateral) All 3 sides are of equal length
  □ (isosceles) 2 sides are of equal length, while the 3rd is different
  □ (scalene) All 3 sides are of different length
  □ To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.
  □ Return a symbol

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

3, 3, 3) => 9 :equilateral  : All 3 sides are of equal length
3, 3, 1.5) => 7.5 :isosceles : 2 sides are of equal length, while the 3rd is different
3, 4, 5) 12 => :scalene : All 3 sides are of different length
0, 3, 3) 6 :invalid
3, 1, 1) 5 :invalid

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

▣ Apply Valid triangle criteria to input digits
▣ Return 
  □ :equilateral
    ﹥  side1 == side2 && side1 == side3  
  □ :isosceles 
    ﹥ [3, 3, 1].tally include 2 & 1 values?
  □ :scalene 
    ﹥ [5, 4, 1].tally.all?(num) == 1
  □ :invalid
    ﹥ if 0 is included return invalid
    ﹥ [3, 1, 1] => {1 => 2, 3 => 1} if 2 key is less than 1 key invalid

  My algorithm failed to explicitly account for the final invalid condition without mingling with similar conditions. meaning the criteria for :invalid would match as :isosceles becase there are values of 2, however it does not explicitly determine whether the value associated with 2 is greater than 1. this additional criteria is what would negate it. LS handles this by getting the max num and multiplying it by 2, then getting the greater or equal comparison of adding all the values up.: return :invalid if 2 * largest >= sides.reduce(:+). I another to handle this is to get the total count of the max and compare it with the min. The max count should be less then the min in an invalid symbol.
=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  return :invalid if sides.count(sides.max) < sides.count(sides.min) || sides.include?(0)

  if side1 == side2 && side1 == side3
    return :equilateral
  elsif sides.tally.values.include?(2)
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3)# == :equilateral
p triangle(3, 3, 1.5)# == :isosceles
p triangle(3, 4, 5)# == :scalene
p triangle(0, 3, 3)# == :invalid
p triangle(3, 1, 1)# == :invalid