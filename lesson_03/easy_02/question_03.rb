ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }


ages.merge!(additional_ages)
additional_ages.each { |key, val| ages[key] = val }
additional_ages.each { |key, val| ages.store(key,val) }
p ages