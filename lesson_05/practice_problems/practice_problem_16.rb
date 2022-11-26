
#Write a method that returns one UUID when called with no parameters.


# There are a total of 32 values broken into 5 sections.
# The size of each sections is =>  8-4-4-4-12 

# The first step would be to segment my sections and assign size limitations.
# generate a random integer or random letter for each index in each section.
# The data structure should be in String form. 
# sample expected output:
# => "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

uuid = []
count = 0
sections = [8, 4, 4, 4, 12]

def random_char
  [[(0..9).to_a.sample], [("A".."F").to_a.sample]].sample
end
until count == 32
  uuid << random_char
  count += 1
end
uuid = uuid.join

p uuid.insert(8, "-").insert(13, "-").insert(18, "-").insert(23, "-")