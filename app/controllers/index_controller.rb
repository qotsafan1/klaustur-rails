class IndexController < ApplicationController
  def index
    timeNow = DateTime.now
    timeOfCompetiton = DateTime.new(2017, 5, 27, 12)
    timeToCompetiton = timeOfCompetiton - timeNow;

    @days = timeToCompetiton.floor.to_i
    hours = (timeToCompetiton - timeToCompetiton.floor) * 24
    @hours = hours.floor.to_i
    minutes = (hours - hours.floor) * 60
    @minutes = minutes.floor.to_i
    seconds = (minutes - minutes.floor) * 60
    @seconds = seconds.floor.to_i
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
