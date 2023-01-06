
def greetings(arr, hsh)
  name = arr.join(" ")
  title = hsh[:title]
  occu = hsh[:occupation]
  p "Hello, #{name}! Nice to have a #{title} #{occu} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

#=> "Hello, John Q Doe! Nice to have a Master Plumber around."
