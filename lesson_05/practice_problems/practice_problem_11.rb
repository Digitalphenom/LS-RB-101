arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |collection|
  collection.select do |element|
    element % 3 == 0
  end
end

# first map through the array collection and return the mapped collection in a new array. then iterate through and select elements that are divisible by 3. the result of that will yield  =>
# [[], [3, 12], [9], [15]]