greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# does (informal_greeting = greetings[:a]) mutate greeting?
# line 2 accesses and assigns the value "hi" to informal_greeting. informal greeting is refencing the same value within the collection.
# line 3 << mutates informal_greeting.
# greeting will hold the same value because it points to the same object informal_greeting is pointing to.
