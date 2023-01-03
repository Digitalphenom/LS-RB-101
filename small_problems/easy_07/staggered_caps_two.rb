def space_index(str)
  space_index = []

  arr = str.chars
  arr.each.with_index do |char, i|
    space_index << i if char == " " 
  end
  space_index
end

def digit_index(str)
  digit_index = []
  str = str.downcase.split.join
  arr = str.chars

  arr.each.with_index do |char, i|
    digit_index << i if char.match?(/\d/)
  end
  digit_index
endef number_vault(str)
  number_vault = []
  arr = str.chars
  
  arr.each do |char|
    number_vault << char if char.match?(/\d/)
  end
  number_vault
end

def staggered_case_two(str)
  space_index = space_index(str)
  digit_index = digit_index(str)
  numbers = number_vault(str)

  str.gsub!(/\d/, "")
  str = str.downcase.split.join

  arr = str.chars
  arr.each.with_index(1) do |char, i|
    char.upcase! if i.odd?
  end
  str = arr.join

  # re-insert digits
  count = 0
  until count == numbers.length
       str.insert(digit_index[count], numbers[count])
       count += 1
  end
 # re-insert spaces
   space_index.each do |i|
    str.insert(i, " ")
  end
   str
end

 staggered_case_two('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
 staggered_case_two('ALL CAPS') == 'AlL cApS'
 staggered_case_two('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


#p staggered_case_two('ALL CAPS') == 'AlL cApS'
#p staggered_case_two('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# take a string
# return a new string with every other character capitalized in staggered form
# => "HeLlO WoRlD"

# take a string and set it to all lowercase, then split it into single characters. iterate and upcase every other character in collection, if a character is not a word leave as is and go to next.

# the most direct to accomplish this is by downcasing then joining all arrays excluding spaces.
# the problem is how to insert spaces back into the joined.
# one way to solve this is to iterate through the initial string and save the index to an array
# then iterate through characters inserting an empty space into the proper index

# [s,e,d, r,i,c,k]