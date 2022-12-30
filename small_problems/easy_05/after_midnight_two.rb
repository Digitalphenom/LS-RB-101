def hour_conversion(hour_string)
  digit_hour = 0
  hour = hour_string.split(":")

  hour.each_char do |char|
    digit_hour = digit_hour * 10 + (char.ord - "0".ord)
  end
  digit_hour
end

def minute_conversion(minute_string)
  digit_minute = 0
  minute = minute_string.split(":")

  minute.each_char do |char|
    digit_minute = digit_minute * 10 + (char.ord - "0".ord)
  end
  digit_minute
end

def before_midnight(minute_string)
  digit_hour = digit_hour * 60
  conversion = digit_hour % -1440
  -conversion
end

def after_midnight(minute_string)
  digit_hour =  + digit_minute
  digit_hour = 0 if digit_hour == 1440
  digit_hour
end




 after_midnight('00:00') == 0
 before_midnight('00:00') == 0
 after_midnight('12:34') == 754
 before_midnight('12:34') == 686
 after_midnight('24:00') == 0
 before_midnight('24:00') == 0