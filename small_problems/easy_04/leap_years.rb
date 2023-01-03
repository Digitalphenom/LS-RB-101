
def julian_calender(year)
  year % 4 == 0
end

def leap_year?(year)
  if year < 1752 
    julian_calender(year)
  elsif year % 400 == 0 || year % 4 == 0 && year % 100 != 0
    true
  else
    false
  end
end

p leap_year?(2016) 
p leap_year?(2015) 
p leap_year?(2100) 
p leap_year?(2400) 
p leap_year?(240000) 
p leap_year?(240001) 
p leap_year?(2000) 
p leap_year?(1900) 
p leap_year?(1752) 
p leap_year?(1700) 
p leap_year?(1) 
p leap_year?(100)
p leap_year?(400)

# determine a leap year
# a leap year is any year that is evenly divisible by 4
# if that year is also divisible by 100, then it is not a leap year
# unless it is also divisible by 400
