valid = ["green", "red"]

def color_valid(valid, color)
  valid.include?(color)
end

p color_valid(valid, "black")