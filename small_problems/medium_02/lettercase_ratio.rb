
def letter_count(str)
  case_count = {:lowercase => 0, :uppercase => 0, :neither => 0}
  str.each_char do |chr|
    if chr.match?(/[a-z]/)
      case_count[:lowercase] += 1
    elsif chr.match?(/[A-Z]/)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  case_count
end

def letter_percentages(str)
  length = str.chars.size

  case_count = letter_count(str)
  case_count[:lowercase] = (case_count[:lowercase] / (length.to_f)).ceil(3) * 100
  case_count[:uppercase] = (case_count[:uppercase] / (length.to_f)).ceil(3) * 100
  case_count[:neither]  = (case_count[:neither] / (length.to_f)).ceil(3) * 100
  case_count
end

p letter_percentages('abcdefGHI') 
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


