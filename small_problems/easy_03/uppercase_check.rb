def uppercase?(str)
  arr = str.chars
  arr.all? { |char| char == char.upcase }
end

p uppercase?('t')  
p uppercase?('T') 
p uppercase?('Four Score') 
p uppercase?('FOUR SCORE') 
p  uppercase?('4SCORE!') 
p  uppercase?('') 