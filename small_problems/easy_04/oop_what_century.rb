=begin

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

1 100 1st
101 200 2nd
201 300 3rd
301 400 4th
401 500 5th
501 600 6th
601 700 7th
701 800 8th
801 900 9th
901 1000 10th
1001 1100 11th

1801 1900 19th
1901 2000 20th
2001 2100 21st
2101 2200 22nd

[1st [1st 2nd 3rd th]]
[2nd [1st 2nd 3rd th]]
[3rd [1st 2nd 3rd th]]
[4th [1st 2nd 3rd th]]

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Input: int
  normalize year (begining cent end cent)
  decrement by (centuries:100) until 0
  keep track of centuries added
  use lookup table to determine century number
  concatenate century number with centuries added
output : return century number

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algo ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
=end

class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def self.century(year)
    obj = new(year).normalize
  end

  def normalize
    century = (year.to_f / 100).ceil * 100
    century_number = 0

    until century == 0
      century -= 100
      century_number += 1
    end

    add_suffix(century_number)
  end

  def add_suffix(century)
    return 'th' if [11, 12, 13].include?(century % 100)

    last_num = century % 10

    suffix = case last_num
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else
      'th'
    end 
    puts century.to_s + suffix
  end
end



Year.century(2000) #== '20th'
Year.century(2001) #== '21st'
Year.century(1965) #== '20th'
Year.century(256) #== '3rd'
Year.century(5) #== '1st'
Year.century(10103)# == '102nd'
Year.century(1052) #== '11th'
Year.century(1127) #== '12th'
Year.century(11201) #== '113th'