
#Write a method that returns one UUID when called with no parameters.

# strategy
#  generatae digits from 0-9, generate letters from a-f, insert one randomized letter or digit into an array 32 times in increments of 8 << 4 << 4 << 12

# 7/9/23 

uuid = ""
insert_by = [8, 4, 4, 12]

def generate_char
  [[*"0".."9"].sample, [*"a".."f"].sample].sample
end

insert_by.each do |value|
  value.times do |i|
    uuid += generate_char()
  end
  uuid += "-" 
end

uuid.chop

# ------------------------(alternate)------------------------------
#refactor 

uuid = []
section_insert = [8, 13, 18, 23]

def random_char
  [[(0..9).to_a.sample], [("A".."F").to_a.sample]].sample
end

until uuid.size == 32
  uuid << random_char()
end

section_insert.each do |section|
  uuid.insert(section, "-")
end
uuid.join
