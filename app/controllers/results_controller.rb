class ResultsController < ApplicationController
  def index
    algo = Algorithm.new
    @best = algo.basic
    @stats = algo.stats.stats
  end
  
end
