require_relative '../lab2/lcg.rb'
require_relative 'cypher.rb'
require 'digest/sha1'
require 'xorcist'

include Xorcist


puts 'Введите строку, которую нужно зашифровать:'
input = gets.chomp

key = LCG.new.generate_bits(rand(input.length .. input.length + 5))

puts "\nЗашифрованная строка:"
crypted_msg = Cypher.encrypt(input, key)
puts crypted_msg

puts "\nРасшифрованная строка:"
decrypted_msg = Cypher.encrypt(crypted_msg, key)
puts decrypted_msg

puts "\nЗашифрованный ключ"
puts Digest::SHA1.hexdigest(key)

File.open('result.txt', 'w+') do |f|
  f.puts 'Зашифрованная строка:'
  f.puts crypted_msg

  f.puts 'Расшифрованная строка:'
  f.puts decrypted_msg

  f.puts 'Зашифрованный ключ'
  f.puts Digest::SHA1.hexdigest(key)
end
