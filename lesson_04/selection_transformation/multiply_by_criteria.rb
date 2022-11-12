def multiply(numbers, multiplier)
  # multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
      # multiplied_numbers << numbers[counter] * multiplier
      current_number = numbers[counter]
      numbers[counter] = current_number * multiplier

      counter += 1
    end
    numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 5) #=> [5, 20, 15, 35, 10, 30]
p my_numbers #=> [5, 20, 15, 35, 10, 30]
