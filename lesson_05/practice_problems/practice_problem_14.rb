hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []
hsh.map do |collection, v|
  if v[:type] == "fruit"
    arr << v[:colors]
  elsif v[:type] == "vegetable"
    arr << v[:size]
  end
end

 arr.map do |element|
    if element.to_s == element
      element.upcase!
    else
      element.map do |size|
        size.capitalize!
    end
  end
end
p arr
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# iterate through hash and select colors of fruit.
# assign them to a array.
# iterate through hash and select sizes of vegetable
# assign them to a array
# this must be done in order color then size then color then size.

# iterate through arr and use a conditional statement to upcase values if its a string or iterate through collection and capitalize if its a collection.  

#------ignore------------
# the issue im running into is appending the values in order.
# at the moment, once I finish adding the :colors values, if I append the :sizes values they are out of order.
# the order might need to be done after. maybe I can use #sort?
# nevermind the arranging of values happens in real-time so it keeps the proper order.