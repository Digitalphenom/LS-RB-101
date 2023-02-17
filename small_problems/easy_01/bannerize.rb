# take a string
# return a dynamic box surrounding the string

# create a box use string interpolation within the box

def print_in_box(str)
  puts "+-#{"-" * str.size}-+" 
  puts "| #{" " * str.size} |" 
  puts "| #{str} |" 
  puts "| #{" " * str.size} |" 
  puts "+-#{"-" * str.size}-+" 
end

p print_in_box("hello world")