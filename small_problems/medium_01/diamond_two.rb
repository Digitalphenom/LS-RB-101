=begin
#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
given an odd argument, generate a diamond

The diamond should equal the argument at its mid point
  *********
Begin at 1 at its begining and end
  *
then a subsequent odd diamon thereafter
   *
  ***
 ****
The mid base should contain no space
The begin/end should contain the most white spaces
Spaces should be generated from 1 upto base input incrementing

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examles ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

#diamond(11)
     *
    ***
   *****
  *******
 *********
***********
 *********
  *******
   *****
    ***
     *

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
input: int
intermediary: iterative sequence of subsequent odd input diamons
*
***
****
*****
Add proper white space chars
   *
  ***
 *****
*******
output: diamon sequence

#⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorith◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

  ▣ Generate diamon sequence
    □ from one upto input
      ﹥add one diamon
      ﹥ increment by 2
        9 [1 => 3 => 5 => 7 => 9]
  ▣ Insert spaces
    □ option one
      □ use built in center method
      □ manual approach
        ﹥ get total input & divide by 2
        ﹥ capture in white_char local var
        ﹥ multiply by " ".
        ﹥ this will give you the proper indentation per iteration
  ⇵ Repeat in reverse
    
=end


def create_diamond(n)
  puts generate_top(n) + generate_top(n)[0..-2].reverse
end

def generate_top(n)
  count = n / 2
  result = []

  1.upto(n) do |i|
    if i.odd?
      result << (" " * count) + ("*" * i)
      count -= 1
    end
  end
  result
end


create_diamond(7)