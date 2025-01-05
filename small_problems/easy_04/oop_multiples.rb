#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#You may assume that the number passed in is an integer greater than 1.

=begin
#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

given an input number, calculate the total of a sequence of multiples between 3 & 5.

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

3 => 3 = 3
10 => 3 + 6 + 9 = 18
5 + 10 = 15
18 + 15 = 33

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

input: digit
intermediary = 
generate sequence of multiples from 3 to less than or equal input number
repeat with multiples of 5
add total
return
output: digit

=end

class Sequence

  def self.multisum(input)
    sequence_one = self.generate_multiples(input, 3)
    sequence_two = self.generate_multiples(input, 5)
    (sequence_one + sequence_two).uniq.sum
  end

  class << self
    private

    def generate_multiples(input, multiple)
      (0..input).select { |i| i % multiple == 0 }
    end
  end
end

p Sequence.multisum(3) == 3
p Sequence.multisum(5) == 8
p Sequence.multisum(10) == 33
p Sequence.multisum(1000) == 234168