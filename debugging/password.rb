=begin
Method set_password does not modify variables outside its scope, so
no passwords will be saved. Password will remain nil.

Method verify_password does not have access to variables outside its
scope, and no external variables were passed in as parameters.
Therefore, an undefined method or variable exception will be raised
when it tries to reference password.

To fix:
- In the outermost scope: 
  password = set_password
- In set_password:
  Set last line to `password` so it is returned from the method.
- Modify verify_password to take a parameter.
  verify_password(password)
- In the outermost scope:
  Pass in `password` as an argument to verify_password.

=end

require 'pry'

password = nil

# def set_password
def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
  password
end

# def verify_password
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
  password = set_password
end

verify_password(password)