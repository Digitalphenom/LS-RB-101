# take an array of numbers
# return the same array sorted

# STRATEGY
# access  digit_1 and digit_2 of array compare them, swap spaces with first digit if it is greater than digit_2, until end of array. repeat until array is sorted from low to high.


def sorted?(arr)
  arr == arr.sort
end

def bubble_sort!(arr)
  loop do
    count1 = 0
    count2 = (arr.size) - 1
 
    loop do
      if arr[count1] > arr[-count2]
        temp = arr.delete_at(count1)
        arr.insert((count1+1), temp)
      end
      count1 += 1
      count2 -= 1
      break if count1 == (arr.size) - 1
    end
    break if sorted?(arr)
  end
  arr
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

 p array = [6, 2, 7, 1, 4]
 p bubble_sort!(array)
 p array == [1, 2, 4, 6, 7]
# 
p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)