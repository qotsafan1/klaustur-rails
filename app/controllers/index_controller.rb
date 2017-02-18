class IndexController < ApplicationController
  def index
  end

  def news
    @articles = Article.all
  end

  def results
    @groups = Group.all
    @competitors = Competitor.all
  end

  def info
    @info = Information.first
    @groups = Group.where(hide: false).order(:priority)
  end
end
