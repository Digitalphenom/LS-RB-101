def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# we have a nested call to rps breaking this down we have
# rps()
# rps("rock", "paper") = fist2(paper)
# rps("rock", "scissors") = fist1(rock)
# (fist1 = rock, fist2 = paper )first2(paper)
# fist1 (rock) fist2(paper) = fist2(paper)
# paper

