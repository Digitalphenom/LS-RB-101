books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
# sort through this hash collection from smallest to largest publishing date.

# iterate through the collection, access the published date values, sort from small to large then return the updated values in a new hash collection.

# use the method call (map) on the books collection.
# or use loop to iterate through collection
# iterate and access value of published key.
# update :published key value to integer
# sort works on the collection not individual elements so your sorting would need to be done after updating strings to integers.

counter = 0
loop do
  books[counter][:published] = books[counter][:published].to_i
  counter += 1
  break if counter == books.size
end
p books.sort_by {|k, v| k[:published]}
