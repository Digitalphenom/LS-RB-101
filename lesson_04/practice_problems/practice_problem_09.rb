{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# the code block conditional statement asks if the size of value is greater than 3, which is false for "ant", true for "bear".
# The return value will be => [nil, "bear"]

