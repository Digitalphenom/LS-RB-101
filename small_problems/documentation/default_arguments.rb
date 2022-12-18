# required arguments take precedence over default arguments.
# thus 
#-----------
#  def my_method(a, b = 2, c = 3, d)
#  p [a, b, c, d]
# end
# my_method(4, 5, 6)
#---------
# => will output [4, 5, 3, 6]
# argument (6) will be assigned to d leaving c to print its default value 3.
