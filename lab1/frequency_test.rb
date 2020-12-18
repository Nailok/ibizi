module FrequencyTest
  def self.test(file)
    sequence = File.open(file).first
    sum = 0

    sequence.each_char do |c|
      elem = 2 * c.to_i - 1
      sum += elem
    end


    result = sum / Math.sqrt(sequence.size)
    puts result
   if (result) <= 1.82138636
     puts "True" 
   else
     puts "False"
   end
  end
end
