module CrossOver
  def self.between(chromo1, chromo2)
    length = chromo1.length
    cut_1 = length / 3
    cut_2 = length * 2 / 3
    child1 = []
    child1 += chromo1.chromosome[0..cut_1-1]
    child1 += chromo2.chromosome[cut_1..cut_2-1]
    child1 += chromo1.chromosome[cut_2..-1]
    child2 = []
    child2 += chromo2.chromosome[0..cut_1-1]
    child2 += chromo1.chromosome[cut_1..cut_2-1]
    child2 += chromo2.chromosome[cut_2..-1]
    [Chromosome.new(child1), Chromosome.new(child2)]
  end
  
end