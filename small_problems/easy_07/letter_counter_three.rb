
def letter_case_count(str)
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


letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

