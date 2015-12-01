class ProgramsController < ApplicationController
  skip_before_action :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }
  EXCEPTIONS = [:created_at, :updated_at, :muscle_group_id, :exercise_id]
  JSON_EX = {:include =>
                 {:exercise_descriptions =>
                      {:except => EXCEPTIONS + [:id]},
                  :muscle_group => {except: EXCEPTIONS}},
             :except => EXCEPTIONS}
  JSON_DAY = {:include =>
                   {:exercises => JSON_EX},
               :except => EXCEPTIONS}
  JSON_PROGRAM = {:include =>
                        {:training_days => JSON_DAY},
                  :except => EXCEPTIONS}
  def index
    # programs = []
    # Program.all.each do |p|
    #   @program = p
    #   programs << show_program
    # end
    # render json:  programs
=begin
    render json: User.all[0].to_json(:include =>
    {:programs => JSON_PROGRAM},
     :except => EXCEPTIONS)
=end
    render json: Program.all[0].to_json(JSON_PROGRAM)
  end

  def show
    @program = Program.find(params[:id])
    render json: show_program
  end

  def new

  end
  #post
  #post json
  self.allow_forgery_protection = false  # for curl purposes
  def create
    @program = Program.new(program_params)
      if @program.save!
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
    training_plan = []
    @program.training_days.each do |d|
      groups = []
      d.muscles_groups.each {|g| groups << MuscleGroup.find(g).name}
      ex = []
      d.exercises.each do |e|
        attr = {
            'Description' => e.description
        }
        tr = TrainingDayExercise.find_by_exercise_id_and_training_day_id(e.id, d.id)
        attr['Sets'] = tr.sets
        attr['Repetition'] = tr.repetition
        ex << {e.name => attr}
      end
      training_day = {
          'Day' => Date::DAYNAMES[d.wday],
          'Muscle Groups' => groups,
          'Exercises' => ex
      }
      training_plan << training_day
    end
    training_plan
  end
end
