# The following code prompts the user to set their own password if they haven't done so already, and then prompts them to login with that password. However, the program throws an error. What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected? Verify that you are able to log in with your new password.

# in order to get the code to work, we first need to set a parameter on the verify_password method and pass `password` as an argument when we invoke `verify_password`. Then,  witthin the if clause, we initialize a variable and assiggggn it  the return value of invoking `set_paassword`. This way the test ffor equality on line 20 checks `input` against the one we set onn the `set_password` method.

password = nil
require 'pry'
def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password()
end

verify_password(password)