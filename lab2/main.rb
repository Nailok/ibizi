require_relative 'lcg.rb'
require_relative 'file_operations.rb'
require_relative '../lab1/frequency_test'

puts 'seed = (a*X+b)*mod(m)'

puts "Vvedite nachal'noe X: "
x = gets.chomp.to_i
main = LCG.new(x)

puts 'Vvedite a: '
a = gets.chomp.to_i

puts 'Vvedite b: '
b = gets.chomp.to_i

puts 'Vvedite m: '
m = gets.chomp.to_i

i = 0
output_string = ""

puts
puts "Sequence: "
while i < 5
  num = main.lcg(a, b, m)
  i+=1
  output_string << num.to_s(2)
  print num.to_s(2)
end

puts
puts '----------------------------------------------'

FileOperations.write_to_file(output_string)
FrequencyTest.test("sequence.txt")
