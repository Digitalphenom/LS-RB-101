def print_in_box(str)  
  border = ""
  center = ""

  str.each_char do |chr|
    chr; border += "-"; center += " "
  end

  puts "+-#{border}-+"
  puts "| #{center} |"
  puts "| #{str} |"
  puts "| #{center} |"
  puts "+-#{border}-+"
end

print_in_box('')

# for every string character including spaces assign one (space) to border and center.