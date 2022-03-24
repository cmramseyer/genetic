class ResultsController < ApplicationController
  def index
    algo = Algorithm.new
    @best = algo.basic
  end
  
end
