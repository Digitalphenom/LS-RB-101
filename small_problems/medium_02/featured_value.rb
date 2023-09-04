=begin
⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

  ▣ Explicit Requirements
    □ Featured num is:
    □ odd, multiple of 7, each digit occurs one time
    □ Return error message if no NEXT featured num
    □ return next featured num > than input num
    □ If input num is fearured num: go next

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

12 == 21
7, (12), 14, 21 
7, 14, (20), 21 
7, 14, (21), 28, 35 == 35

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

? How to determine featured num?
  ▣ Generate a sequence of digits that are mults of 7 less than the input num
  ▣ Add 7, to sequence 
    □ Apply featured num criteria
      ▫ num % 7 == 0
      ▫ num.odd?
      ▫ convert digit to array
    □ if feature num return num
    □ if not feature num:
      ▫ return error
      ▫ add 7
      ▫ repeat

   One thing that my algo fails to mention is what number  do we apply the featured criteria to. the input num or the sequence num? In the ls solution, its applied to the input num. They dont generate a separate sequence. Second theres some underlying mathematical understanding they apply that I was unaware of. Basically if you begin your first num as an odd multiple of 7, and then increment by 14. It ensures that each subsequent num is an odd multiple of 7. I did not know this and is the primary reason why it never executes the final condition. Its basically processing nums that will fail the set condition because it increments by 7 doubling the set of conditions it must check. The LS solution gets around that by incrementing by 7 only for the conditiitions of find an odd num and being divisible by 7.  once that's is no longer true, it executes the second loop which checks for the final criteria of duplicate digits and handles the error message by incrementing by 14. This is the distinction that makes it more efficient.

=end

def featured(num)
  sequence = 0

  until sequence.odd? && sequence > num && sequence % 7 == 0  && num_count(sequence) 
    sequence += 7
  end

  return error_msg() if sequence > 9_876_543_210
  sequence
end

def num_count(num)
  dig_arr = num.to_s.chars
  dig_arr.uniq == dig_arr
end

def error_msg
  puts "There is no possible number that fulfills those requirements"
end


p featured(12)# == 21
p featured(20)# == 21
p featured(21)# == 35
p featured(997)# == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


 # pass final test case