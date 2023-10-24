
# 2/20/23 additional answer

def short_long_short(str1, str2)
  if str1.size < str2.size
    short, long = str1, str2
  else
    short, long = str2, str1
  end
  puts "#{short}#{long}#{short}"
end

# can be shortened to:
def short_long_short(str1, str2)
  short, long = str1.size < str2.size ? [str1, str2] : [str2, str1]
  puts "#{short}#{long}#{short}"
end


short_long_short("abc", "defgh")
short_long_short("abcde", "fgh")
short_long_short("", "xyz")