flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# alternate

flintstones.each.with_index {|name, i| puts i if name.include?("Be")}

# --------------------------------------------
flintstones.each_with_index do |word, index|
  if word.match?(/^[B][e]/)
  puts "The index of the first 'Be' name match is #{index}"
  end
end

# flintstones.index { |name| name[0, 2] == "Be" }
# I had thought of this one but not using a block parameter. 
# taking a second look at the docs, the solution is right there. I overlooked it.