=begin
P: Understand the Problem
Problem Statement
Write a method that implements a miniature stack-and-register-based programming
language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

Inputs:
- 1 string of commands
Outputs:
- Prints the result of executing the commands.
Explicit Requirements
- Print something if the PRINT command is used, otherwise nothing.
- All mathematical operations are integer operations.
Implicit Requirements
- There is a space between each command and the next.
Clarifying Questions
- Return new object or mutate existing one?
  - Printing only. No returning objects.
Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
Consider:
- 0, nil, "", [], {}, special chars, symbols
- Negative numbers
- Decimals instead of integers
- Boundary conditions
- Repetition / duplication
- Upper and lower case characters
- 0, 1, and multiple items in a collection
- Data types
- Exceptions
- Missing arguments

Case: 
Inputs: 
Outputs:


D: Data Structure


A: Algorithm
- Create an empty array called stack: []
- Create a `register` variable initialized to 0.
- Split the input string into commands.
- Set up a case statement which evaluates commands:
  PUSH: stack.push(register)
  ADD:  register += stack.pop
  SUB:  register -= stack.pop
  MULT: register *= stack.pop
  DIV:  register /= stack.pop
  MOD:  register %= stack.pop
  POP:  register = stack.pop
  PRINT: puts stack.last
  ELSE: register = command

C: Code
=end

STACK_COMMANDS = %w(ADD SUB MULT DIV MOD POP)
VALID_COMMANDS = [*STACK_COMMANDS, 'PUSH', 'PRINT']

def minilang(command_str)
  stack = []
  register = 0
  commands = command_str.split
  
  # Convert integer strings to integer type.
  # Check for invalid commands and raise exception.
  commands.map! do |command|
    if command == command.to_i.to_s
      command.to_i
    elsif VALID_COMMANDS.include? command
      command
    else
      puts "Invalid command: #{command}."
      return
    end
  end
  
  commands.each do |command|
    if STACK_COMMANDS.include? command
      unless stack.empty?
        case command
        when 'ADD'   then register += stack.pop
        when 'SUB'   then register -= stack.pop
        when 'MULT'  then register *= stack.pop
        when 'DIV'   then register /= stack.pop
        when 'MOD'   then register %= stack.pop
        when 'POP'   then register = stack.pop
        end
      else
        puts "Stack empty"
      end
    else
      case command
      when 'PUSH'  then stack.push(register)
      when 'PRINT' then puts register
      when Integer then register = command
      end
    end
  end
  nil
end

minilang('HELLO')

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# # Further Exploration
# minilang('3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 4 PUSH 5 MULT SUB ADD DIV PRINT')