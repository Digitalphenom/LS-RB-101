flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

count = 0
size = flintstones.length
loop do
  flintstones[count] = flintstones[count][0,3]
  count += 1
  break if count == size
end
p flintstones

# remove the characters from each name except the first three.

# this ones tricky, how do I remove string characters within an array index?
# access each name within the array.
# remove the individual characters that are greater than 3.
#  how do you remove characters from a string?
# you can access an array with array[index]
# you can further access the value by chaining []
# array[index][0..3]
# from there simply re-assign the array with the new values.

# or 
# flintstones.map! { |name| name[0,3] }

