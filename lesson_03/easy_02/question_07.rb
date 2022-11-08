flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain

flintstones.concat(["Dino", "Hoppy"])# concat adds an array rather than one item
p flintstones
