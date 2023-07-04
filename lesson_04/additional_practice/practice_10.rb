# goal
# insert an age group key into each pair with the value representing 3 age groups => kid, adult, senior.

# strategy
#  - access ages values and determine if they are less than 17, greater than 18 but less than 64, or over 64. Insert a corresponding key and value pair where age_group represents all keys and the following values are assigned to each key: "kid" for the first condition, "adult" the second and "senior" for everything else.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|

  if value["age"] < 17
    munsters[key]["age_group"] = "kid"
  elsif value["age"] >= 18 && value["age"] <= 64
    munsters[key]["age_group"] = "adult"
  else
    munsters[key]["age_group"] = "senior"
  end
end

p munsters

# ------------(LS)----------------
# munsters.each do |name, details|
#  case details["age"]
#  when 0...18
#    details["age_group"] = "kid"
#  when 18...65
#    details["age_group"] = "adult"
#  else
#  end
# end