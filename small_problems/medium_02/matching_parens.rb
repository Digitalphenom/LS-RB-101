require "pry"
def balanced?(str)
  parens = 0
  
  str.each_char do |chr|
      parens += 1 if chr == "(" || chr == "["
      parens -= 1 if chr == ")" || chr == "]"
      break if parens < 0
  end
  p parens.zero?s
end

  balanced?('What (is) this?') == true
  balanced?('What is) this?') == false
  balanced?('What (is this?') == false
  balanced?('((What) (is this))?') == true
  balanced?('((What)) (is this))?') == false
  balanced?('Hey!') == true
  balanced?(')Hey!(') == false
  balanced?('What ((is))) up(') == false