require "pry"
def calculate_values(one, two)
  puts " #{one} + #{two} = #{one + two}"
  puts " #{one} - #{two} = #{one - two}"
  puts " #{one} * #{two} = #{one * two}"
  puts " #{one} / #{two} = #{one / two}"
  puts " #{one} % #{two} = #{one % two}"
  puts " #{one} ** #{two} = #{one ** two}"
end

print "Enter the first number: "
one = gets.chomp.to_i
two = ""

loop do
  print "Enter the second number: "
  two = gets.chomp.to_i
  if two.zero?
    puts "Wrong number try again"
  end
  break if two != 0
end

calculate_values(one, two)

# get number from user in integer form
# get second number from user in integer form
# if second number is 0, try again.
# calculate the two supplied values in each operation :
# +, -, *, /, %, **
# return each result.