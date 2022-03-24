class Algorithm

  POPULATION = 20
  GENERATIONS = 200

  def initialize
    
  end

  def basic
    population = Population.new(20)
    GENERATIONS.times do
      population.setup_selection
      new_childs = []
      (POPULATION/2).times do
        chromo1 = population.select_one
        chromo2 = population.select_one
        child1, child2 = CrossOver.between(chromo1, chromo2)
        new_childs << chromo1 << chromo2
      end
      population.chromosomes = new_childs
    end
    population.the_best
    
  end
  
  
end