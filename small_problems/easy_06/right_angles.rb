require 'pry'
def triangle(digit)
  total = digit
  spaces = digit
  #digit = 0

  until digit == 0
    digit.times do |i|
      e = print "."
    end
    puts "\n"
    digit -= 1
  end
end

triangle(4)
