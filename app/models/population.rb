class Population

  attr_accessor :chromosomes

  def initialize(size)
    @chromosomes = size.times { Chromosome.new }
  end

  def selection
    chromosomes_evaluated = @chromosomes.map do |chromo|
      { chromosome: chromo, evaluation: chromo.evaluate }
    end
    evaluation_sum = chromosomes_evaluated.sum {|h| h[:evaluation]}
    
    chromosome_evaluated.sort_by { |h| h[:evaluation] }.take(length/2).map { |h| h[:chromosome] }
  end
  
end