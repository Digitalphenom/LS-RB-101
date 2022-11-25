
[{ a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each do |collection|
  collection.map do |keys, _|
    collection[keys] += 1
  end
end



# => [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]