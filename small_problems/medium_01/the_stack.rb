# from the problem description, I gather were building a calculator type method while demonstrating stack-like behavior.

# based on how they described it, a stack-register programming language uses stacks to represent values in the form of Arrays. The adding and removing behavior can be emulated using #pop and #push.

# from the problem example it looks like the stack value is represented by incomming values. in our case it would be the arguments supplied when calling the method. As they come in they are stored in an array called stack in order of first in last out.

def minilang(commands)
  stack = []
  register = 0

  commands.split.each do |command|
    case command
    when Integer then register << command
    when "PRINT" then puts register
    when "PUSH" then stack << register
    when "MULT" then register *= stack.pop
    when "ADD" then register += stack.pop
    when "SUB" then register -= stack.pop
    when "DIV" then register /= stack.pop
    when "MOD" then register = register % stack.pop
    when "POP" then register = stack.pop
    else             register = command.to_i
    end
  end
end

#minilang('PRINT')
# 0
#minilang('5 PUSH 3 MULT PRINT')
# 15
#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
#minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
#minilang('-3 PUSH 5 SUB PRINT')
# 8
#minilang('6 PUSH')
# (nothing printed; no PRINT commands)

