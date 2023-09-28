def insert_ordinal(indx, range, last)
  ordinal = case indx
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  when (3..last) then "th"
  when range.last then "last"
  end
end

def output_result(result)
  result = result.map(&:to_i)
  last_num = result[-1]
  appears = result[0...-1].include?(last_num) ? "appears" : "does not appear"

  puts "The number #{last_num} #{appears} in #{result[0...-1]}" 
end

sequence = (1..8).to_a
result = []

sequence.each do |i|
  ordinal = insert_ordinal(i, sequence, sequence[-2])
  puts sequence.last == i ? "Enter the #{ordinal} number" : "Enter the #{i}#{ordinal} number"
  result << gets.chomp
end

puts output_result(result)
