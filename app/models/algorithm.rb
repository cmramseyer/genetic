class Algorithm

  GENERATIONS = 10

  def initialize
    
  end

  def basic
    population = Population.new(20)
    GENERATIONS.times do
      population.setup_selection
      new_childs = []
      (100/2).times do
        chromo1 = population.select_one
        chromo2 = population.select_one
        puts "selected 1"
        puts chromo1.evaluate
        puts "selected 2"
        puts chromo2.evaluate
        child1, child2 = CrossOver.between(chromo1, chromo2)
        new_childs << child1 << child2
      end
      population.chromosomes = new_childs
    end
    population.the_best
    
  end
  
  
end