class IndexController < ApplicationController
  def index
  end

  def signup
    @groups = Group.all
  end

  def results
    @groups = Group.all
    @competitors = Competitor.all  
  end

  def history
  end
end
