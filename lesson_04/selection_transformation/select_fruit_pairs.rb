produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  arr = hsh.to_a
  selected_values = []
  counter = 0

  loop do
    current_char = arr[counter]

     if current_char.include?("Fruit")
     selected_values << current_char
     end
    counter += 1
    break if counter == arr.size
  end
  fruit_hsh = selected_values.to_h
  
end
 p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


#Let's now take a look at an example with hashes. In this example we want to select the key-value pairs where the value is 'Fruit'.

#  iterate through the key/value pairs.
#  select key/value pairs with a value of "Fruit"
# return the pairs in a new hash.

# crate a method that takes one argument.
# initialize an empty hash.
# initialize a loop
# iterate through the hash and select key/value pair with the value of "fruit"
# append the selections to the initialized empty hash.
# return the new hash.

# iterate through hash
# hashes cannot be accessed by index, therefore a selection method must be used to scan through the hash and select the desired criteria. in this case a value of "fruit"
# of you can use the code block variable within a loop do code block

# transform hash into array.
# then iterate through array values and select the ones that include the value "fruit"
# append those to the initialized array.
# transform the array into a hahs.

