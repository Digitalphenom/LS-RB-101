def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
end
# the << method generally means append but for integers its means bitwise shift. 
 p rolling_buffer1(5, 25, 2)

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
 p rolling_buffer2([5], 25, 2)

 # :+ is another way to concatenate objects however you cannot use :+ to merge an integer and string. In this case you are concatenating two array(tricky) to the variable buffer

# i see what this lesson is trying to teach. no neccesarily what the individual methods (:<<, :+) output, but how each return different values because of how they fundamentally handle value.  :<< is transformative :+ is not