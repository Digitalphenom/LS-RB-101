
=begin

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

Requirement
  □ Relationship between input number and starts are:
    □ There are a total of (n) of columns
    □ the star is made of 3 components
      ﹥ top branch
      ﹥ base branch 
      ﹥ bottom branch
    □ Top & bottom branch contain 3 stars
    □ base branch contains (n) stars
  □ Top base branch should contain (((n) - 3) / 2 ) spaces
    □ decrement 1 downto 0 beginning from base downto top branch

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ DS ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

I: String

count = (((n) - 3) / 2 ) spaces
count -= 1
break 

puts "#{space *}#{*}#{space}#{*}#{space}#{*}"

puts "#{*}"
puts "#{*}(space)#{*}(space)#{*}"

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

▣ Determine space input count
  □ Multiply each space by result
  □ ((7 - 3) => 4 / 2 => 2 

▣ Determine total iteration count
  □ starting count (n / 2)
  □ decrement by 1
  □ break when 0

  □ Relationship between input number and starts are:
    □ There are a total of (n) of columns
    □ the star is made of 3 components
      ﹥ top branch
      ﹥ base branch 
      ﹥ bottom branch
    □ Top & bottom branch contain 3 stars
    □ base branch contains (n) stars
  □ Top base branch should contain (((n) - 3) / 2 ) spaces
    □ decrement 1 downto 0 beginning from base downto top branch

=end

def top_branch(num)
  space = ""
  inner_space = ""
  insert_count = ((num - 3) / 2)

  insert_count.times { |i|  inner_space << " " } 
  outer_space = (num - 3) / 2
  cycle = num / 2

  until cycle.zero?
    puts "#{space}*#{inner_space }*#{inner_space}*"
    cycle -= 1
    inner_space.chop!
    space << " "
  end
end

def bottom_branch(num)
  space = ""
  inner_space = ""
  insert_count = ((num - 3) / 2)

  insert_count.times { |i|  space << " " } 
  outer_space = (num - 3) / 2
  cycle = num / 2

  until cycle.zero?
    puts "#{space}*#{inner_space }*#{inner_space}*"
    cycle -= 1
    space.chop!
    inner_space << " "
  end
end

def star(num)
  top_branch(num)
  puts "#{"*" * num}"
  bottom_branch(num)
end

star(9)