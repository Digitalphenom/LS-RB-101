

def fizzbuzz(x, y)
  digits = (x..y).to_a
  digits.each do |num|
    if num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 15 == 0
      puts "FizzBuzz"
    else
      puts num
    end
  end
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


# ls solution
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end