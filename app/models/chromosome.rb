class Chromosome
  LENGTH = 100

  attr_accessor :chromosome

  def initialize(chromosome = nil)
    @chromosome = chromosome || Array.new(LENGTH) { [true, false].sample }
  end

  def mutate
    @chromosome[LENGTH - 1] = !@chromosome[LENGTH - 1]
  end

  def evaluate
    @chromosome.map {|chromo| chromo ? 1 : 0 }.sum
  end

  def length
    LENGTH
  end
  
  
end