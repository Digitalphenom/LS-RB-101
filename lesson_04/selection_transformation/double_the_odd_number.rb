def double_odd_numbers(numbers, criteria)
  counter = 0

  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    if counter.odd?
      numbers[counter] += current_number *= 1
    end
    counter += 1
  end
  numbers
end


my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)
p my_numbers





# Exercise for the reader: What if we wanted to transform the numbers based on their position in the array rather than their value?

# Try coding a solution that doubles the numbers that have odd indices: