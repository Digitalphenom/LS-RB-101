
  print "What is your name? "
  name = gets.chomp
  #if name.include?("!")
  #  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?! "
  #else
  #  puts "Hello #{name.capitalize}."
  #end
  if name[-1] == "!"
    name = name.chop
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?! "
  else
    puts "Hello #{name.capitalize}."
  end

  # this solution works but does not consider edge cases.
  # s!ed, !
  #