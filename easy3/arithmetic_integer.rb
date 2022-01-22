# puts '==> Enter the 1st number:'
# x = gets.chomp.to_i
# puts '==> Enter the 2nd number:'
# y = gets.chomp.to_i
# puts "==> #{x} + #{y} = #{x + y}"
# puts "==> #{x} - #{y} = #{x - y}"
# puts "==> #{x} * #{y} = #{x * y}"
# puts "==> #{x} / #{y} = #{x / y}"
# puts "==> #{x} % #{y} = #{x % y}"
# puts "==> #{x} ** #{y} = #{x ** y}"

operators = [:+, :-, :*, :/, :%, :**]

operands_i = []
operands_f = []
puts '==> Enter the 1st number:'
operand = gets.chomp
operands_i << operand.to_i
operands_f << operand.to_f
puts '==> Enter the 2nd number:'
operand = gets.chomp
operands_i << operand.to_i
operands_f << operand.to_f

[operands_i, operands_f].each do |ops|
  operators.each do |op|
    puts "==> #{ops[0]} #{op.to_s} #{ops[1]} = #{ops.reduce(op)}"
  end
end
