require 'pry'
def palindromic_number?(num)
  reversed = []
  num = num.digits.reverse
  count = num.size
  loop do
    count -= 1
    reversed << num[count]
    break if count == 0
  end
  reversed == num
end

p palindromic_number?(34543) 
p palindromic_number?(123210) 
p palindromic_number?(22) 
p palindromic_number?(5) 