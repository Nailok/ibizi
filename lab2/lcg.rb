class LCG
  def initialize(seed = (Time.now.to_f*1000.0).to_i, a = 5**7, b = 7**5, m = 2147483647)
    @seed = seed
    @a = a
    @b = b
    @m = m
  end

  def lcg(a,b,m)
    @seed = (a*@seed + b) % m
  end

  def generate(start, stop)
    start + lcg(@a, @b, @m) % (stop - start + 1)
  end

  def generate_bits(len)
    i = 0
    output = ""

    while i < len
      output << generate(0, 1).to_s
      i += 1
    end
    return output
  end
end
