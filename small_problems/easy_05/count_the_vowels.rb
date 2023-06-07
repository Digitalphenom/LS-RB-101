
# given a sentence with vowels, return the largest running vowel count

def vowel_count(str)
  count = 0
  result = []

str.each_char do |char|
  if char.match?(/[aeiouAEIOU]/)
    count += 1
  else
    result << count
    count = 0
  end
end
result << count
result.max
end

p vowel_count("aadaadeiEoeooodWE")
p vowel_count("ofwoordsthatiscomplete")
p vowel_count("geeksforgeeks portal")
p vowel_count("aadiioaadeoeoE")