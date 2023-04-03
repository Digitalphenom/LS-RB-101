advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub!("important", "urgent")

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.split.map { |char| char == "important" ? char = "urgent" : char }.join(" ")



