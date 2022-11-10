valid = ["green", "red"]

def color_valid(valid, color)
  valid.include?(color) ? true : false
end

p color_valid(valid, "green")