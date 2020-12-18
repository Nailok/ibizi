require_relative 'frequency_test.rb'
require_relative 'generate_sequence.rb'

puts 'Введите длину последовательносити'
size = gets.chomp

GenerateSequence.generate(size.to_i)
FrequencyTest.test("sequence.txt")
