class Population

  attr_accessor :chromosomes

  def initialize(size)
    @size = size
    @chromosomes = Array.new(size) { Chromosome.new }
  end

  def setup_selection
    acum = 0
    @chromosomes_evaluated = @chromosomes.map do |chromo|
      acum += chromo.evaluate
      { chromosome: chromo, evaluation: chromo.evaluate, acum: acum }
    end
    @evaluation_sum = @chromosomes_evaluated.sum {|h| h[:evaluation]}
  end

  def select_one
    threshold = random
    selected = @chromosomes_evaluated.detect {|chromo| chromo[:acum] >= threshold }
    selected[:chromosome]
  end

  def the_best
    @chromosomes_evaluated.sort_by {|h| h[:evaluation]}.last[:chromosome]
  end

  def random
    rand(0..@evaluation_sum)
  end

  def all_fit
    @chromosomes.map(&:evaluate)
  end
  
  
  
  
end