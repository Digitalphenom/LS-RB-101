def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
# foo has a default value of no but foo will
# always return "yes"
# bar also has a default value of no
# when foo is passed into bar foo takes on the default value of no?
# this is incorrect because foo is being passed in without an argument. 
# therefore within the bar method foo has a value of "yes" is foo equal to "no?" is false
# no will return.



