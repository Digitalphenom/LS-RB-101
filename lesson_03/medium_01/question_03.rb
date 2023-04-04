def factors(number)
  divisor = number
  factors = []

  return "Please enter a valid character" if number == 0 || number.negative?
  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

p factors(0)
p factors(-45)

# the modulo operator divides a given number with another and returns the remainder
# the purpose of == 0 is to check if the modulos return value is equal to 0 which would indicate the value is an integer and that it has no remainder which would further indicate that the value is even

# a methods return values are based on the last evaluated statement. factors is placed on the last line so that the method return value is the factors array.
