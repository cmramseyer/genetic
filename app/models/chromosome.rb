class Chromosome
  LENGTH = 6

  attr_accessor :chromosome

  def initialize(chromosome = nil)
    @chromosome = chromosome || random
  end

  def mutate!
    #@chromosome[LENGTH - 1] = !@chromosome[LENGTH - 1]
  end

  def evaluate
    @chromosome.join.to_i(2)
  end

  def length
    @chromosome.size
  end

  def random
    random_chromo = ("%b" % rand(2.pow(LENGTH))).split("").map { |n| n.to_i }
    (6 - random_chromo.size).times do
      random_chromo.prepend(0)
    end
    random_chromo
  end
  
  
  
end