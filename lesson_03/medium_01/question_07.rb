munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# the answer to this question boils down to whether :+= and = is transformative or non transformative.
# the method :+= is will not transform the original object.
# = means re-assignment here and it is also non transformative.
# the family data remains intact

# I was wrong, the values are transformed. I wonder why it does so in this example but not in others ive seen?
# ok i think I know why now. For the last question it involved Integers which are non-mutable thats why = & += had no effect on the original object. 
# However generally speaking = & :+= are transmutable so the variables passed in will be passed by reference. altering the orginal object.

# ill update this as I update my current model of understanding.

mess_with_demographics(munsters)
puts munsters