
# this approach manually keeps track of a counter so that if it encounters non-alphabetic chars they do not count as uppcase or downcase and the count continues from the previous alphabetic char

def staggered_case(str, ii)
  counter = ii
  str.chars.map.with_index do |char|
    if /[\W \d]/.match?(char)
      char
    elsif counter.even? || counter.zero? 
      counter += 1
      char.upcase
    else
      counter += 1
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!', 0) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', 0) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', 0) == 'IgNoRe 77 ThE 444 nUmBeRs'
