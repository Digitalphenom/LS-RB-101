
def palindromic_number?(num)
  num.to_s.reverse == num.to_s
end

p palindromic_number?(34543) 
p palindromic_number?(123210) 
p palindromic_number?(22) 
p palindromic_number?(5) 