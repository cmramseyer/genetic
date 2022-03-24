class Population

  attr_accessor :chromosomes

  def initialize(size)
    @size = size
    @chromosomes = Array.new(size) { Chromosome.new }
  end

  def setup_selection
    @chromosomes_evaluated = @chromosomes.map do |chromo|
      { chromosome: chromo, evaluation: chromo.evaluate }
    end
    @evaluation_sum = @chromosomes_evaluated.sum {|h| h[:evaluation]}
  end

  def select_one
    threshold = rand(0..@evaluation_sum)
    acum = 0
    @size.times do |i|
      acum += @chromosomes_evaluated[i][:evaluation]
      return @chromosomes_evaluated[i][:chromosome] if acum >= threshold
    end
  end

  def the_best
    @chromosomes_evaluated.sort_by {|h| h[:evaluation]}.last[:chromosome]
  end
  
  
end