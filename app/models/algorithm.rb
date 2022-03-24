class Algorithm

  GENERATIONS = 200

  def initialize
    
  end

  def basic
    pop_size = 20
    population = Population.new(pop_size)
    GENERATIONS.times do
      population.setup_selection
      puts "pupulation before cross over"
      puts population.chromosomes.size
      puts population.chromosomes.map(&:evaluate)
      new_childs = []
      (pop_size/2).times do
        chromo1 = population.select_one
        chromo2 = population.select_one
        puts "selected 1"
        puts chromo1.evaluate
        puts "selected 2"
        puts chromo2.evaluate
        child1, child2 = CrossOver.between(chromo1, chromo2)
        child1.mutate! if rand(0..100) == 1
        child2.mutate! if rand(0..100) == 1
        new_childs << child1 << child2
      end
      population.chromosomes = new_childs
    end
    population.the_best
    
  end
  
  
end