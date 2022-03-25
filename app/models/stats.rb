class Stats

  attr_reader :stats

  def initialize
    @stats = []
  end

  def add_generation_info(params)
    @stats << params
  end  
  
end