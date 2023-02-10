
# Generally ! means caution, but when used in the context of a method say for example slice and slice!, it means that a method will mutate its calling object. However not all methods that mutate its calling object will sport the bang character Array#pop is an example.

# ? on the other hand is usually paired with methods where a boolean result is expected. Array#include? and FalseClass#nil? are some examples.

# Some additional examples where ! and ? are used are as follows.

# 1. != is used when you want to negate an expression where you expect a true result typically used in a conditional if statement. It means not equal to. ie => if x != true

# 2. when ! is used before a variable like (!user_name) it signifies negation. if user_name carries the value true then it will negate to false. This applies even if the value is a string, integer, array.

# 3 words.shuffle! will mutate its calling object

# 4 !! infront of an object is the oppositve of !object. it turns the object into its boolean equivalent, opposite to false.
