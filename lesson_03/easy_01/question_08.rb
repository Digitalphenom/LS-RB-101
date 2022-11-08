flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

def transform(hash)
  hash.select! do |k, v|
  k.include?("Barney")
  end
  hash.to_s
end
transform(flintstones)
puts flintstones