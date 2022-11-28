[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
    hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# we have a nested array of 2 hash collections.
# line 1 is a method call (select) on the outer array object. its return value is an array of elements selected that are truthy

# line 2 is another method call (all?) on the hash index elements. it returns true if ALL elements of self meet a given criterion.

# line 3 is that given criterion. it selects the first index of the hash value that is equal to keys.
# the return value of the second method call is : true for
#  => [{ :c => "cat" }] false for everything else.
# although the first hash collection contains a truthy value, the second is false, therefore the whole thing is false.

# therefore the return value for the first method call #select is elements that are true based on the second method call.
#  => [{ :c => "cat" }]