# take a string
# return the middle character(s) of string arg

# strategy
# to find the middle value of a given set of odd values. count the total size of chars then divide by 2.
# to find the middle (two) values of a given set of even value. count the total size of chars divide by 2 to get the middle right value. subtraxt by 1 to get the middle left value.

def center_of(str)
  half = str.size / 2
  str.size.even? ? str[half - 1..half] : str[half] 
end

p center_of("I love ruby")
p center_of("Launch School")
p center_of("Launch")
p center_of("Launchschool")
p center_of("x")