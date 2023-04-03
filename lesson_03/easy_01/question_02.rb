
# within the context of built in methods the Ruby convention ! refers to mutability while ? refers to boolean return values. Not all methods that mutate its calling object or return a true/false value are prefixed with these symbols. Array#pop, Array#include? and FalseClass#nil? are some examples.

# Some additional examples where ! and ? are used are as follows.

# 1) != inequality operator is the negated version of the equality operator `==`
# it is used when comparing values to the right of the operand that are not equal to values on the left. ie => if x != true

# 2. when ! is prepended on an object type, it converts it to its oppositve boolean equivalent.

# 3 words.shuffle! mutates its calling object

# 4 !! prepended on an object type converts it to its boolean equivalent.
