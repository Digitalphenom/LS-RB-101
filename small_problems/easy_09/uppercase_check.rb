
require "pry"
def uppercase?(str)
  str.include?(str.upcase)
end

 p uppercase?('t')# == false
 p uppercase?('T') #== true
 p uppercase?('Four Score')# == false
 p uppercase?('FOUR SCORE')# == true
 p uppercase?('4SCORE!')# == true
 p uppercase?('')# == true


 # this one simple, yet a little tricky in that the test condition is being tested against my test condition.
 # fixed it by removing them

 # Food for thought: in our examples, we show that uppercase? should return true if the argument is an empty string. Would it make sense to return false instead? Why or why not?

 # it would make sense because its a condition that returns neither a downcase or upcase, which is what were looking for. an empty string is akin to nil in this case.