class Chromosome
  LENGTH = 50
  def initialize
    @chromosome = Array.new(LENGTH) { [true, false].sample }
  end

  def mutate
    @chromosome[LENGTH - 1] = !@chromosome[LENGTH - 1]
  end

  def evaluate
    @chromosome.map {|chromo| chromo ? 1 : 0 }.sum
  end
  
end