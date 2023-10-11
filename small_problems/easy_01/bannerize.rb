# take a string
# return a dynamic box surrounding the string

# create a box use string interpolation within the box

def print_in_box(str)
  horizontals = "+-#{"-" * str.size}-+" 

  puts horizontals
  puts "| #{" " * str.size} |" 
  puts "| #{str} |" 
  puts "| #{" " * str.size} |" 
  puts horizontals
end

p print_in_box("hello world")