statement = "The Flintstones Rock"

joined_string = statement.split(" ").join
arr = joined_string.split("")

hsh = Hash.new
arr.each do |letter| 
  hsh[letter] = arr.count(letter)
end
p hsh

# count the number of occurences of each letter

# create an array with individual letters joined together without spaces.
# iterate through each letter and determine how many times each letter occurs within the array.
# punch each letter @ number to a hash in key/value
# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# you can start by iterating through the array and use count(letter) to punch in the occurances as values.