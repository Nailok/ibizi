module GenerateSequence

  def self.generate(length)
    random = Random.new
    output_string = ""
    i = 0;

    while i != length
      output_string << random.rand(2).to_s
      i += 1
    end

    puts output_string
    write_to_file(output_string)
  end

  def self.write_to_file(text)
    File.open("sequence.txt","w+") do |f|
      f.write(text)
    end
  end
end
