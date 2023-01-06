def get_grade(g1, g2, g3)
  total = g1 + g2 + g3
  average = total / 3
  #binding.pry
  case average
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"