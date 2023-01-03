def staggered_case(str)
  str = str.downcase
  arr = str.chars
  arr.each.with_index(1) do |char, i|
    char.upcase! if i.odd?
  end
  arr.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# take a string
# return a new string with every other character capitalized in staggered form
# => "HeLlO WoRlD"

# take a string and set it to all lowercase, then split it into single characters. iterate and upcase every other character in collection, if a character is not a word leave as is and go to next.