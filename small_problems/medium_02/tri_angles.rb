=begin
A triangle is classified as follows:

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

▣ Explicit Requirements:
  □ right One angle of the triangle is a right angle (90 degrees)
  □ acute All 3 angles of the triangle are less than 90 degrees
  □ obtuse One angle is greater than 90 degrees.
  □ To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

  □ 90 == right angle

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

60, 70, 50) == :acute => 3 * 90 < 90
30, 90, 60) == :right => 1 * 90
120, 50, 10) == :obtuse => 1 * 90 > 90
0, 90, 90) == :invalid  => sum != 0
50, 50, 50) == :invalid => sum < 180 OR sum > 180

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

▣ Capture individual degrees into an array
▣ Apply angle Criteria
  □ :right
    ﹥ angles.count(90) == 1
  □ :acute 
    ﹥ angles.all? { |degree| angles.count(degree) < 90 }
    One angle is greater than 90
      ﹥ 
  □ :obtuse
    ﹥ angles.any? {|angle| angle > 90 && }
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  return :invalid if angles.include?(0) || angles.sum != 180
  return :right if angles.one? { |angle| angle == 90 }
  return :acute if angles.all? { |angle| angle < 90 }
  return :obtuse if angles.one? { |angle| angle > 90 }

end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid




