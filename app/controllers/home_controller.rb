class HomeController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
    @ret = {}
    render json: @muscle_groups.each {|group| @ret[group.name] = group.exercises}
  end
end
