#3/8/23
# convoluted but got it to work
def thousand_lights(lights)
  arr = (1..lights).to_a
  temp_arr = arr.dup
  n = 0
  count_by = 1

  loop do
    count_by += 1
    loop do
      n += count_by
      break if n >= lights + 1
      if temp_arr[n-1].is_a?(Integer)
        temp_arr[n-1] = nil # remove light
      elsif temp_arr[n-1].nil?
        temp_arr[n-1] = arr[n-1] # add light
      end
    end
    n = 0
    break if count_by >= lights
  end
  temp_arr.compact
end
# ------------------------------------------------------
# problem
# you have a set of switches with one light each that is set to off.
# for each iteration you will toggle each switch in the following pattern:
# first iteration, toggle all switches which turns them all on. second iteration toggle switches in order of 2's 2, 4, 6.  On the third pass, toggle in order of 3's 3, 6, 9, etc.. repeating this process until the end of n iterations.

# so the problem is easier than I was initially dissecting it to be. basically you add one to the count for each iteration. 2, 3, 4, 5, etc. I thought there was some hidden pattern inbeded within the sum of total digits that I needed to replicate. But if I read carefully the answer is relatively straightforward. its in the problem description

# now how to solve it in code?

count = -1
round = 2
loop do
  loop do
    p "inner #{count += round}"
    temp[count] == "" ? temp[count] = array[count] : temp[count] = ""
    p temp
    break if count >= digit
  end
  count = -1
  p "outer #{round += 1}"
  break if round == digit
end

# -------------------------

status = 2

temp.each.with_index(0) do |num, i|
  if  num == ""
    temp[i] = array[i] 
  elsif num == status
    temp[i] = ""
  end
  status += 2
end
p temp

# -------------------

until count == digit
  temp[count_by -1] = ""
  count += 1
  count_by += 2
  p temp
end

# ----------------------------

array = (1..digit).to_a
temp = array.dup
count = 2
temp.each.with_index(0) do |num, i|
  if  num == ""
    temp[i] = array[i] 
  elsif num == count
    temp[i] = ""
  end
  count += 1
  p temp
end

# these are all of my failed attempts
# after looking at the answers, it looks like I had the general idea. were I failed was in not properly breaking up code into sub functions. Also Instead of using "", I could have used [1, false] to represent a nil character. this would remove the need to have to delete any elements. I could have simply used booleans to turn on / off each pair of digits per iterations based on a modulo return value.
# it would  eliminate my reliance on index's to access values, reducing complexity.

