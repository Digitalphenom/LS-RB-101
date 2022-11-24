[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
    hash.any? do |key, value|
    p value[0] == key.to_s
  end
end

# we have a nested array of 2 hash collections.
# line 1 has a method call (select) on the outer array object.
# line 2 is another method call (all?) on the hash index elements.
# line 3 selects the first index of the hash value that is equal to keys.
# the return value of the second method call is : 
# => [{ :c => "cat" }]