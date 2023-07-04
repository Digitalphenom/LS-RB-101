# GOAL 
# take a string and return a hash where each character that occurs once in the string is a key and the total count of each letter is the value.
# input - string
# output - hash

# STRATEGY
#   convert string into array of individual characters, insert each character as a hash key one time, count total occurences of each character insert count into corresponding key/value. return hash


# OBJECTIVES
# convert string into array of individual characters => #chars

# access each character if it occurs once insert into hash key if it occurs more than once next
#   - insert current char into hash as key
# access each character and count total occurences
#   - compare key with string return count
# insert count into corresponding key/value hash.
# return hash

statement = "The Flintstones Rock"

arr = statement.split.join.chars
hsh = {}

arr.each { |letter| hsh[letter] = arr.count(letter) }

p hsh
