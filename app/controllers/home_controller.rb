class HomeController < ApplicationController
  def index
    @groups = MuscleGroup.all
  end
end
