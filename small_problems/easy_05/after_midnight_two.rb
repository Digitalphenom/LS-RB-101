def after_midnight(minute_string)
  digit_hour = 0
  digit_minute = 0
  hour, minute = minute_string.split(":")
  
  hour.each_char do |char|
    digit_hour = digit_hour * 10 + (char.ord - "0".ord)
  end
  minute.each_char do |char|
    digit_minute = digit_minute * 10 + (char.ord - "0".ord)
  end
  
  digit_hour = digit_hour * 60 + digit_minute
  digit_hour = 0 if digit_hour == 1440
  digit_hour
end

def before_midnight(minute_string)
  digit_hour = 0
  digit_minute = 0
  hour, minute = minute_string.split(":")

  hour.each_char do |char|
    digit_hour = digit_hour * 10 + (char.ord - "0".ord)
  end
  minute.each_char do |char|
    digit_minute = digit_minute * 10 + (char.ord - "0".ord)
  end

  digit_hour = digit_hour * 60 + digit_minute
  conversion = digit_hour % -1440
  -conversion
end


 after_midnight('00:00') == 0
 before_midnight('00:00') == 0
 after_midnight('12:34') == 754
 before_midnight('12:34') == 686
 after_midnight('24:00') == 0
 before_midnight('24:00') == 0