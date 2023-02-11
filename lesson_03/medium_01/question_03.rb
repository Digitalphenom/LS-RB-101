def factors(number)
  divisor = number
  factors = []
  if number == 0 || number.negative?
    return "Please enter a valid character"
  end
  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end
# the code below accomplishes this more succintly.
# while divisor > 0
# factors << number / divisor if number % divisor == 0
# divisor -= 1
# end

p factors(0)
p factors(-45)

# The purpose of number % divisor == 0
#is to determine if (number is divisible by divisor an even amount of times) 0 means true.
#the purpose of line 11 is to return the value of factor
# after the loop has finishe