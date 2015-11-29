class Program < ActiveRecord::Base
  has_many :program_training_days
  has_many :training_days, :through => :program_training_days
  has_many :user_programs
  has_many :users, through: :user_programs

  TRAINING_TYPE = { :strength => 1, :mass => 2, :relief => 3}
  TRAINING_PLACE = {:gym => 1, :home => 2}

  def self.choose_program(type, place)
    if place == 1
      program = Program.find_by_training_type(type)
      #UserProgram.create!(user: current_user, program: program)

    elsif place == 2
      #do home program
    else
      #error message
    end
    program
  end
end
