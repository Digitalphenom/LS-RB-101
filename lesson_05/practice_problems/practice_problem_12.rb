arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
#p arr.flatten
hsh = {}
arr.each do |k, v|
    hsh[k] = v
  end
hsh

# we need to return a hash with each key/ value paired assigned

# One way to go about this is to create an empty hash.
# iterate through each keys, and append them to the hash.
# access each key and assign it the corresponding values.
# what trips me up is the randomeness of the hash. i see some nested hashes for keys and also a lone value. how do I handle these?