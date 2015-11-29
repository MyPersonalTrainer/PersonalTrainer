class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    respond_to do |format|
      format.html
      format.json { render :json => @exercises.to_json(JSON_EX) }
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end
end
