class ProgramsController < ApplicationController
  def index
    programs = []
    Program.all.each do |p|
      @program = p
      programs << show_program
    end
    render json:  programs
  end

  def show
    @program = Program.find(params[:id])
    render json: show_program
  end

  def new

  end

  def create
    @program = Program.new(program_params)
    if @program.save
      Program.build_training_plan(@program.id)
      redirect_to @program
    else
      render json: @program.errors
    end
  end

  def update

  end

  private
  def program_params
    params.require(:program).permit(:gender, :age, :weight, :height, :activity, :physical_level,
    :complexity, :training_type)
  end

  def show_program
    training_plan = {}
    @program.training_days.each do |d|
      ex = []
      d.exercises.each do |e|
        ex << {e.name => e.description}
      end
      groups = []
      d.muscles_groups.each {|g| groups << MuscleGroup.find(g).name}
      training_plan[Date::DAYNAMES[d.wday]] = {groups => ex}
    end
    training_plan
  end
end
