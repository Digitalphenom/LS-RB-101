#Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.


def prompt(str)
  Kernel.puts(str)
end

def square_meters(length, width)
  length * width 
end

def square_feet(num)
  result = num * 10.7639
  x = '%.2f' % result
  x.to_i
end

prompt("=> Enter the length of the room in meters:")
length = gets.chomp.to_i
prompt("=> Enter the width of the room in meters:")
width = gets.chomp.to_i
prompt("=> The area of the room is #{length * width} square meters (#{square_feet(square_meters(length, width))} square feet)")

