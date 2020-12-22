require_relative 'lcg.rb'
require_relative 'file_operations.rb'
require_relative '../lab1/frequency_test'

puts 'seed = (a*X+b)*mod(m)'

puts "Vvedite nachal'noe X: "
x = gets.chomp.to_i

puts 'Vvedite a: '
a = gets.chomp.to_i

puts 'Vvedite b: '
b = gets.chomp.to_i

puts 'Vvedite m: '
m = gets.chomp.to_i


# main = LCG.new()

main = LCG.new(x, a, b, m)

puts 'Vvedite kol-vo bitov'
bits = gets.chomp.to_i
puts bits
# previous = main.lcg(a, b, m)

# num = main.lcg(a, b, m)

output_string = main.generate_bits(bits)
puts output_string

puts 'Frequency test: '
FileOperations.write_to_file(output_string)
FrequencyTest.test("sequence.txt")
