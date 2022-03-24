module CrossOver
  def self.between(chromo1, chromo2)
    length = chromo1.length / 2
    child1 = []
    child1 += chromo1.chromosome[0..length-1]
    child1 += chromo2.chromosome[length..-1]
    child2 = []
    child2 += chromo2.chromosome[0..length-1]
    child2 += chromo1.chromosome[length..-1]
    [Chromosome.new(child1), Chromosome.new(child2)]
  end
  
end