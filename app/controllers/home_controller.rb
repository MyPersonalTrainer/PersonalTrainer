class HomeController < ApplicationController
  def index
    @muscles = MuscleGroup.all
  end
end
