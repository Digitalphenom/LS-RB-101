a = 42
b = 42
c = a

puts a.object_id # 85
puts b.object_id # 85
puts c.object_id # 85

# integers are immutable, although there can be multiple instances of a given immutable object ie (42) they all reference themselves. This means that all variables that reference the same object (42) are indeed the same object. This may lead you to believe that if you alter one, it will affect all because after all they reference themselves. However immutable object cannot be changed or altered in anyway. They can on be re-assigned which returns a completely new object. Because of that, when you update one the changes dont apply to the rest. The answer is 85 for all.
