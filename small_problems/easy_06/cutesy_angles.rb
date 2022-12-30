DEGREE = "\xC2\xB0"

def dms(digit)
  degrees = digit / 1
  minutes = (degrees % 1) * 60
  seconds = (minutes % 1) * 60
  seconds = seconds.round
  formated = sprintf("%02d#{DEGREE}%02d'%02d\"",degrees, minutes, seconds)
  puts formated
end



dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Goal
# take a integer or float
# return a string where the float integer represents an angle in degrees, minutes and seconds 
#----------------
# Strategy
# determine the math formula for converting an integer to its equivalent angle in
# degrees, minutes, seconds form. Assign the result of those calculations to three seperate variables representing each. Use string interpolation to print result
#-----------------
# Objective 1
# determine angle conversion formula
# Strategy
# take float integer and divide by 1 to obtain degrees
# obtain the fractional part of degrees with (degrees % 1) then multiply by 60 to get minutes.
# repeat the process above but instead using minutes to get seconds then round down.
# Tactics
# basic arithmetic
#-----------------
# Objective 2
# create three variables named: degrees, minutes, seconds and assign them the result of each math calculation.
#-----------------
# Objective 3
#  use string interpolation or sprintf to format and print result to screen.

