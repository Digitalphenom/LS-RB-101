def cleanup(string)
  spaces = string.scan(/\s+/)

  string.each_char do |char|
    if char.match?(/[^a-z]/)
      string[char] = " "
    end
  end
  string.gsub(/\s+/, " ") if spaces.size > 1
end

cleanup("---what's my +*& line?") == ' what s my line 'fatal