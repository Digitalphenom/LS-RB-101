greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# does (informal_greeting = greetings[:a]) mutate greeting?
# on line 2, it does neither is simply extract the value "hi" from greeting and assigns it to informal_greeting. informal_greeting now points to greeting
# both greeting and informal_greeting hold different object_id
# on line 3 << mutates informal_greeting.
# greeting will now hold the same value because it points to the same object.
