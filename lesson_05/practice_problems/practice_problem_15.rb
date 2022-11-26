arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# return an array of hashes containing even integers only.
# we have an array of hashes with Symbols as keys and Integers as values.
# what we need to do is select all the hash collections that contain all even pairs only.
# => [{:e=>[8], :f=>[6, 10]}]


arr.select do |collection|
  collection.all? do |_,value|
    value.all? do |v|
       v.even?
    end
  end
end
p arr


# this one is proving to be difficult.
# I need to first iterate through the array in order to access the innder hash collections.
# then iterate again so I have access to the key/value pairs.
# then i need to access the values and iterate through them to check for odd integers.
# if it finds one, then I need to exclude that collection from the final output.

# at the moment I dont know how to do the final step. Im able to succesfully access each collection layer but when it comes to finding odd integers its simply dismising those individual characters but not the whole collection.
# =>
# i need it to dismiss the whole collection

#------------solved

# I semi solved this on my own. This is what I came up with

# arr.map do |collection|
#  collection.delete_if do |_, value|
#    value.any? do |v|
#      v.odd?
#    end
#  end
#end

# The problem was that I did not fully understand the problem. I solved the problem I thought it was asking but my interpretation was wrong.
