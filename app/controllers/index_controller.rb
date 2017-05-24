class IndexController < ApplicationController
  def index
    @indexVideos = IndexVideo.all
  end

  def news
    @articles = Article.order('articles.updated_at DESC').all
  end

  def results
    if (params['year'] == '2016')
      year = 2016
    else
      year = 2017
    end
    @groups = Group.all
    @competitors = Competitor.where(year: year).order('laps DESC', :total_time)
  end

  def info
    @info = Information.first
    @groups = Group.where(hide: false).order(:priority)
    @rules = Rule.all
  end

  def children
    @info = Kid.first
  end
end
