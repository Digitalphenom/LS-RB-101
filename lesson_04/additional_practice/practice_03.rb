ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
n = {}
  ages.reject! do |_, val|
    val > 100
end
p ages
# select could also be used but with reversed logic.
# I almost forgot about the transformation aspect of reject!.
