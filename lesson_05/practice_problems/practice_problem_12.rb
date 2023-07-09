arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# here we directly access each inner value and insert into hash as key/value pairs

hsh = {}
arr.each do |key, value|
  hsh[key] = value
end
p hsh

#--------------------------------

# here we iterate through the arr, access each sub_arrs first and second elements and insert them as key/value pairs to the result hash

result = {}
arr.each do |sub_arr|
  result[sub_arr[0]] = sub_arr[1]
end
p result
