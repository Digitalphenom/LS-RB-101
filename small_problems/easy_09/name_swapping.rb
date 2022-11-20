
def swap_name(name)
  split = name.split(" ")
  split.reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name('Derek Godinez') == 'Godinez, Derek'