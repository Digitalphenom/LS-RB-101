require 'date'
def friday_13th(year)
start_date = Date.new(year,1, 1)
end_date = Date.new(year,12, 31)
date_range = start_date..end_date
day_count = 0

date_range.each do |day|
  if day.wday == 5 && day.day == 13
    day_count += 1
  end
end
day_count
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

