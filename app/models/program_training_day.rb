class ProgramTrainingDay < ActiveRecord::Base
  belongs_to :program
  belongs_to :training_day
end
