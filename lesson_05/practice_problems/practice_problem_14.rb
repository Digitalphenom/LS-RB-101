#Given this data structure write some code to return an array containing the colors of the fruits, and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = 
 hsh.map do |_, inner_hsh|
    case inner_hsh[:type]
    when "fruit"
      inner_hsh[:colors].map {|color| color.capitalize}
    when "vegetable"
      inner_hsh[:size].upcase
    end
 end

 p result

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Goal
#   return a new array containing the hashes color values and vegetable values.

# Strategy
#   access each food hash, within that hash access the fruits and vegetable values. if fruit values capitalize, if vegetable values upcase. extract converted values into a new collection.

# --------------(alternative)------------------

result = 
hsh.map do |food, value|
  if value[:type] == "fruit"
    value[:colors].map {|color| color.capitalize}
  elsif value[:type] == "vegetable"
    value[:size].capitalize
  end
end

p result