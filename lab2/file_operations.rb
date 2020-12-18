module FileOperations
  def self.write_to_file(text)
      File.open("sequence.txt","w+") do |f|
        f.write(text)
      end
  end
end
