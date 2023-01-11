# from the problem description, I gather were building a calculator type method while demonstrating stack-like behavior.

# based on how they described it, a stack-register programming language uses stacks to represent values in the form of Arrays. The adding and removing behavior can be emulated using #pop and #push.

# from the problem example it looks like the stack value is represented by incomming values. in our case it would be the arguments supplied when calling the method. As they come in they are stored in an array called stack in order of first in last out.

def minilang(str)
  commands = str.split
  stack = []
  register = [0]
  commands = 
  commands.map do |chr|
    chr.match?(/[\d]/) ? chr.to_i : chr
  end

  commands.select do |command|
  case command
    when Integer then integer_value(register, command)
    when "PRINT" then display_screen(commands, register)
    when "PUSH" then push(commands, register, stack)
    when "MULT" then multi(commands, register, stack)
    when "ADD" then add_value(commands, register, stack)
    when "SUB" then sub_value(register, stack)
    when "DIV" then div_value(register, stack)
    when "MOD" then mod_value(register, stack)
    when "POP" then pop_value(register, stack)
    end
  end
end

def integer_value(register, command)
  register << command
end

def display_screen(commands, register)
  # PRINT Print the register value
  puts "#{register[-1]}"
end

def push(commands, register, stack)
  stack << register[-1] if commands.include?("PUSH")
end

def multi(commands, register, stack)
  register << register[-1] * stack.pop if commands.include?("MULT")
end

def add_value(commands, register, stack)
  # ADD Pops a value from the stack and adds it to the register value, storing the # result in the register.
  register << register[-1] + stack[-1]
end
def sub_value(register, stack)
  register << register[-1] - stack.pop
end
def div_value(register, stack)
  # DIV Pops a value from the stack and divides it into the register value, storing # the integer result in the register.
  register << register[-1] / stack.pop
end

def mod_value(register, stack)
# MOD Pops a value from the stack and divides it into the register value, storing # the integer remainder of the division in the register.
register << register[-1] % stack.pop
end

def pop_value(register, stack)
  # POP Remove the topmost item from the stack and place in register
  register << stack.pop
endirb

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

