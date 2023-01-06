
def swap_name(name)
  split = name.split(" ")
  split.reverse.join(", ")
end

#---------(another answer)-------------
def swap_name(name)
  first, last = name.split
  puts "#{last}, #{first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name('Derek Godinez') == 'Godinez, Derek'