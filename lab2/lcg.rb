class LCG
  def initialize(seed)
    @seed = seed 
  end

  def lcg(a,b,m)
    @seed = (a*@seed + b) % m
  end
end
