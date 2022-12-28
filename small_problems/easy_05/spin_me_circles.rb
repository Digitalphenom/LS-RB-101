def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin
 line 1 defines the method spin_me with the parameter str
 the string method split is called on str and returns (a new array object)
 the each method is called on the returned array, it iterates through each word and calls the bang method reverse!
 line 4 calls the join method on the each methods return value.

is this pass_by_reference or pass_by_value?

 This is a tricky question that can easily  fool someone with the reverse! method on line 3
 however line 3 does not mutate the original str object passed in because the call to split on line 1 returns a new object.
 the resulting mutating methods do not mutate the original str obj.
=end