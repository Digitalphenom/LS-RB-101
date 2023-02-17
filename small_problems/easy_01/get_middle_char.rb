# take a string
# return the middle character(s) of string arg

# take string argument and split it into individual chars.. if string length is even return 2 middle chars. if odd return middle char.
# strategy
# to find the middle value of a given set of odd values. count the total size of chars then divide by 2.
# to find the middle (two) values of a given set of even value. count the total size of chars divide by 2 to get the middle right value. subtraxt by 1 to get the middle left value.


# tactic
# use #split and save into variable arr


def center_of(str)
  arr = str.split("")
  size = arr.size
  str.size.odd? ? arr[size / 2] : arr[(size / 2) - 1] + arr[size / 2]
end

p center_of("I love ruby")
p center_of("Launch School")
p center_of("Launch")
p center_of("Launchschool")
p center_of("x")