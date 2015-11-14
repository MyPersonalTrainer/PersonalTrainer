class HomeController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
    @ret = {}
    @muscle_groups.each {|group| @ret[group.name] = group.exercises}
    render json: @ret
  end
end
