def buy_fruit(list)
  list.each.with_index(0) do |group, i|
  list[i] += group * (group[-1] - 1)
  end.flatten!
  list.reject! { |num| num.is_a?(Integer) }
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# take a nested array of 3 groups
# return the same array (flattened) transformed with each [fruit added num x times]

# iterate through outer array and access each group. then access each groups elements. grap the integer and add the string x amount of times, flatten array.

#
  # iterate through each group in the list
    # access each group and add (digit) * times

#---------(LS solution)----------------

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end
#---------(other)----------------

def buy_fruit(array)
array.map {|sub| [sub[0]] * sub[1]}.flatten
end
