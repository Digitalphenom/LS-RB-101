advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

advice = advice.split 
advice.map! { |char| char == "important" ? char = "urgent" : char }
advice.join(" ")

puts advice


