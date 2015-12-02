class ProgramsController < ApplicationController
  skip_before_action :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  def index
    @programs = Program.all
    respond_to do |format|
      format.html
      format.json { render :json => @programs.to_json(JSON_PROGRAM) }
    end
  end

  def show
    @program = Program.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @program.to_json(JSON_PROGRAM) }
    end
  end

  def new
    @program = Program.new
  end

  #post
  #post json
  self.allow_forgery_protection = false  # for curl purposes
  def create
    if params
      type = params[:program][:training_type].to_i
      place = params[:program][:training_place].to_i
      redirect_to program_path(Program.choose_program(type, place), :format => :json)
    end
  end

  def update

  end

  private
  def program_params
    params.require(:program).permit(:training_type, :training_place)
  end
end
