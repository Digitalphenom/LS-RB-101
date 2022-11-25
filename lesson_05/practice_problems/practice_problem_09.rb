arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
   p sub_arr.sort {|a, b| b <=> a  }
end
#arr.sort_by {|a,b| a}