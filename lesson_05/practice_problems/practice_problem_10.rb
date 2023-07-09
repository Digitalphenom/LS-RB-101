# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.


# this solution, utilizes the original array to iterate through, creates a new hash, populates new hash with desired objects, and returns a new array with said objects while leaving the original array intact.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_hash =
arr.map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
en
p new_hash

# => [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

p new_hash == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]
p arr == [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# this approach both modifies the original array and returns a new array with the proper values.

new_arr = 
arr.map do |hash|
  hash.each do |k, v|
    hash[k] = v + 1
  end
end


p new_arr
p arr == [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

