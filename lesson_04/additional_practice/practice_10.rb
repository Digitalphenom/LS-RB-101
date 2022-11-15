munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters.map do |key, val|
  if val["age"] > 64
    munsters[key]["age_group"] = "senior"
  elsif val["age"] >= 18 && val["age"] <= 64 
    munsters[key]["age_group"] = "adult"
  else
    munsters[key]["age_group"] = "kid"
  end
end
p munsters

# this one really required me to dig in and understand how to assign values to hashes. as straight forward as it seems, it can get tricky when nested values are involved. Especially with hashes and theyre key/value nature.

# as always heres ls more succinct approach.
# a case statement with ranges would have cut down on some code.

# munsters.each do |name, details|
#  case details["age"]
#  when 0...18
#    details["age_group"] = "kid"
#  when 18...65
#    details["age_group"] = "adult"
#  else
#  end
# end