flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

def transform(flintstones) 
  flintstones.each_with_object({}) do |value, hash|
    hash[value] = flintstones.index(value)
  end
end

p transform(flintstones)

#------------------------------------------
#LS

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
