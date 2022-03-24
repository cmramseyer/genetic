class Chromosome
  LENGTH = 18

  attr_accessor :chromosome

  def initialize(chromosome = nil)
    @chromosome = chromosome || Array.new(LENGTH) { [true, false].sample }
  end

  def mutate!
    @chromosome[LENGTH - 1] = !@chromosome[LENGTH - 1]
  end

  def evaluate
    @chromosome.map {|chromo| chromo ? 1 : 0 }.sum
  end

  def length
    @chromosome.size
  end
  
  
end