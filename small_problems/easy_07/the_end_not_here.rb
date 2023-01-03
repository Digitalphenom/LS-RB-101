def penultimate(str)
  arr = str.split
  arr[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'