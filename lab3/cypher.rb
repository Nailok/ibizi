module Cypher
  def self.encrypt(input, key)
    crypted_msg = ""
    i = 0

    while i < input.length
      crypted_msg[i] = xor(input[i],  key[i])
      i += 1
    end

    return crypted_msg
  end

  def self.decrypt(input, key)
    encrypt(input, key)
  end
end
