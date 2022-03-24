module CrossOver
  def self.between(chromo1, chromo2)
    length = chromo1.length
    child1 = []
    child1 << *chromo1[0..length-1]
    child1 << *chromo2[length-1..-1]
    child2 = []
    child2 << *chromo2[0..length-1]
    child2 << *chromo1[length-1..-1]
    [child1, child2]
  end
  
end