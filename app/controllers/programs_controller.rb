class ProgramsController < ApplicationController
  def index

  end

  def show

  end

  def create

  end

  def update

  end

  private
  def program_params
    params.require(:program).permit(:gender, :age, :weight, :height, :activity, :physical_level,
    :complexity, :training_type)
  end
end
