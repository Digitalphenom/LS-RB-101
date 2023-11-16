=begin

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Write a function named persistence, that takes in a positive parameter and returns its multiplicative persistence, which is
the number of times you must multiply the digits in num until you reach a single digit.

Given an input digit, return the number of times you need to multiply the input digit inorder to get to a single digit. Return the times required

▣ Requirements:
  □ Explicit:
    ﹥ multiply digits til digit is a single digit
      ﹥ 56565 => 6
    ﹥ input digit will be positive

  □ Implicit:
    ﹥If digit is single digit return 0

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Input: 39
3 * 9 => 27
2 * 7 => 14
1 * 4 => 4
Output: 3

3*9=27, 2*7=14, 1*4=4

persistence(999) # returns 4, 
Input: 999

9 * 9 * 9 => 729
7*2*9 => 126
1*2*6 => 12
1*2 => 2
Output: 4

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Separate input digit, multiply each individual digit by the subsequent digit, get the product, if product contains 2 or more digits, repeat until product is a single digit.

▣ if digit size is less than 2 return digit
▣ Convert digit into an array of numeric vals

▣ Execute a loop
  □ condition (while arr.size >= 2)
▣ Get the product of numeric array
  □ assign product to replace arr of digits
▣ Repeat 
▣ convert arr to digit
=end

def persistence(digit)
  arr_of_digits = digit.digits.reverse
  0 if arr_of_digits.size < 2

  count = 0
  until arr_of_digits.size < 2
    arr_of_digits = arr_of_digits.reduce(:*).digits.reverse
    count += 1
  end
  count
end

p persistence(39) == 3
p persistence(25) == 2
p persistence(999) == 4
p persistence(4) == 0
