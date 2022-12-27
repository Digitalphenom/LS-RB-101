def normalize(minutes)
  minutes % 1440
end

def time_of_day(minute_input)
  minute_input = normalize(minute_input)
  hours = minute_input / 60 
  minute = minute_input % 60  
  
  sprintf("%02d:%02d",hours, minute)

end

p time_of_day(754) 
p time_of_day(-686) 
p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000) 
p time_of_day(800) 
p time_of_day(-4231) 
